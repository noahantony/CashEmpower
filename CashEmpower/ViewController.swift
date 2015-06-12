//
//  ViewController.swift
//  CashEmpower
//
//  Created by Noah Nayagam on 6/11/15.
//  Copyright (c) 2015 com.mcruncher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func loginTapped(sender: UIButton) {
        var textUserName = "administrator"
        var textPassword = "Password123"
        
        if(userName.text == textUserName && password.text == textPassword)
        {
            let alertController = UIAlertController(title: "Login Successful", message: "Username and password is correct", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.Default,handler:nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        else
        {
            let alertController = UIAlertController(title: "Login Failed", message: "Username and password is incorrect", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.Default,handler:nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
    }
}

