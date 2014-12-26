//
//  ViewController.swift
//  Postcard
//
//  Created by Yoni C on 12/25/14.
//  Copyright (c) 2014 Yoni C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMsgTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //CHeck what to do
        messageLabel.hidden =    false
        messageLabel.text=enterMsgTextField.text
        messageLabel.textColor=UIColor.redColor()
        
        enterMsgTextField.text = ""
        enterMsgTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
    }

}

