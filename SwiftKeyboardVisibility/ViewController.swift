//
//  ViewController.swift
//  SwiftKeyboardVisibility
//
//  Created by Seimith on 1/7/17.
//  Copyright © 2017 Seimith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myCoolTextArea = UITextView()
        myCoolTextArea.backgroundColor = UIColor.gray
        myCoolTextArea.frame = CGRect(x: 0, y: 20, width: self.view.frame.width, height: 300)
        myCoolTextArea.text = "This is a textarea! :)"
        self.view.addSubview(myCoolTextArea)
        
        let myButtonToDismissKeyboard = UIButton()
        myButtonToDismissKeyboard.backgroundColor = UIColor.gray
        myButtonToDismissKeyboard.frame = CGRect(x: 0, y: 350, width: self.view.frame.width, height: 30)
        myButtonToDismissKeyboard.setTitle("Dimiss Button", for: .normal)
        myButtonToDismissKeyboard.addTarget(self, action: #selector(dismissMyKeyboard), for: .touchUpInside)
        self.view.addSubview(myButtonToDismissKeyboard)
        
        NotificationCenter.default.addObserver(self, selector:#selector(keyboardWillAppear), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector:#selector(keyboardWillDisappear), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func keyboardWillAppear (_ notification: NSNotification) {
        print("=== keyboardWillAppear")
    }
    
    func keyboardWillDisappear (_ notification: NSNotification) {
        print("=== keyboardWillDisappear")
    }
    
    func dismissMyKeyboard () {
        self.view.endEditing(true)
    }
}

