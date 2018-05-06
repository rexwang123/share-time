//
//  ChangePasswordViewController.swift
//  share-time
//
//  Created by Godwin Pang on 5/5/18.
//  Copyright © 2018 share-time. All rights reserved.
//

import UIKit
import Parse

class ChangePasswordViewController: UIViewController {

    let signUpConfirmErrorAlertController = UIAlertController(title: "Passwords do not match", message: "Please enter again", preferredStyle: .alert)
    let signUpPasswordErrorAlertController = UIAlertController(title: "Incorrect Password", message: "Please re-enter password", preferredStyle: .alert)
    let signUpPasswordSuccessAlertController = UIAlertController(title: "Success", message: "Changed password successfully!!", preferredStyle: .alert)
    let samePasswordAlertController = UIAlertController(title: "Invalid Password", message: "New password cannot be same as the old password", preferredStyle: .alert)
    let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
        //does nothing -> dismisses alert view
    }
    
    @IBOutlet weak var currentPasswordTextField: UITextField!
    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    let user = PFUser.current()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpConfirmErrorAlertController.addAction(OKAction)
        signUpPasswordErrorAlertController.addAction(OKAction)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onPasswordSave(_ sender: Any) {

        PFUser.logInWithUsername(inBackground: (self.user?.username!)!, password: self.currentPasswordTextField.text!) { (user: PFUser?, error: Error?) in
            if error != nil {
                self.present(self.signUpPasswordErrorAlertController, animated: true)
            }
        }
        if (newPasswordTextField.text == user?.password){
            self.present(self.samePasswordAlertController, animated: true)
        }
        if (newPasswordTextField.text != confirmPasswordTextField.text){
            present(signUpConfirmErrorAlertController, animated: true)
        } else {
            user?.password = newPasswordTextField.text
            user?.saveInBackground{ (success: Bool, error: Error?) -> Void in
                if (success){
                    self.present(self.signUpPasswordSuccessAlertController, animated: true)
                    if let navController = self.navigationController{
                        navController.popViewController(animated: true)
                    }
                } else {
                    print("could not save password")
                }
            }
        }
    }
    
}
