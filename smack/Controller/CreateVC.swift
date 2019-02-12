//
//  CreateVC.swift
//  smack
//
//  Created by Sayooj Sojen on 11/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

class CreateVC: UIViewController {
    
    @IBOutlet weak var usernameField: TextFieldAttributes!
    @IBOutlet weak var passwordField: TextFieldAttributes!
    @IBOutlet weak var emailField: TextFieldAttributes!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func backFromCreatePress(_ sender: Any) {
       performSegue(withIdentifier: "unwindToChannelVC", sender: nil)
    }
    
    @IBAction func avatarPick(_ sender: Any) {
    }
    
    @IBAction func createAccount(_ sender: Any) {
        guard let email=emailField.text, emailField.text != "" else {return}
        guard let pass=passwordField.text, passwordField.text != "" else {return}
        
        AuthService.selfInstance.resgisterUser(email: email, password: pass) { (success) in
            if success {print("Registered User")}
            //here, success in passed to the target func and in the func a call for this definition is done in the parametres, so the var after grabbing stuff there is passed back. Hence we can check if the reg was a success or not
            
        }
        
    }
    
    @IBAction func bgColorPick(_ sender: Any) {
    }
}
