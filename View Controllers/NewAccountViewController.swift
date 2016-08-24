//
//  NewAccountViewController.swift
//  Hack Club App
//
//  Created by Tommy Yang on 8/24/16.
//  Copyright © 2016 Tommy Yang. All rights reserved.
//

import Foundation
import UIKit

class NewAccountViewController: UIViewController{
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
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
    
    func DismissKeyboard(){
        view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "createAccountSegue" {
            let menuViewController = segue.destinationViewController as! MenuViewController
            menuViewController.navigationItem.hidesBackButton = true
            
        }
    }
    
    @IBAction func doneButtonPressed(){
        if usernameTextField.text != "" && passwordTextField.text != "" {
            performSegueWithIdentifier("createAccountSegue", sender: nil)
        }
    }
}