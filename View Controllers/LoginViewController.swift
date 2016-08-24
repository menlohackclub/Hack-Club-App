//
//  LoginViewController.swift
//  Hack Club App
//
//  Created by Tommy Yang on 8/24/16.
//  Copyright © 2016 Tommy Yang. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var newAccountButton: UIBarButtonItem!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var username : String?
    var password : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.DismissKeyboard))
        view.addGestureRecognizer(tap)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginSegue" {
            let menuViewController = segue.destinationViewController as! MenuViewController
            menuViewController.navigationItem.hidesBackButton = true
            
        }
    }
    
    func DismissKeyboard(){
        view.endEditing(true)
    }
    
    @IBAction func loginButtonPressed(){
        if usernameTextField.text != "" && passwordTextField.text != ""{
            performSegueWithIdentifier("loginSegue", sender: nil)
        }
    }
}
