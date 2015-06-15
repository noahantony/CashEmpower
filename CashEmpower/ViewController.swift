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
        
/*        if(userName.text == textUserName && password.text == textPassword)
        {
            let alertController = UIAlertController(title: "Login Successful", message: "Username and password are correct", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.Default,handler:nil))
            self.presentViewController(alertController, animated: true, completion: nil)
            
        } */
        
        
        if(userName.text == textUserName && password.text == textPassword)
        {
            let alertController = UIAlertController(title: "Login Successful", message: "Username and password are correct", preferredStyle: UIAlertControllerStyle.Alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel ){ (action) in }
            alertController.addAction(cancelAction)
            let OKAction = UIAlertAction(title: "Continue", style: .Default) { (action) in
                self.performSegueWithIdentifier("HomePage", sender: self)}
            alertController.addAction(OKAction)
            presentViewController(alertController, animated: true, completion: nil)
            
            //alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.Default,handler:nil))
            //self.presentViewController(alertController, animated: true, completion: nil)
            
        }
        else
        {
            let alertController = UIAlertController(title: "Login Failed", message: "Username and password are incorrect", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default,handler:nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
    }
}
