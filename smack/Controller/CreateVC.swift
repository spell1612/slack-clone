//
//  CreateVC.swift
//  smack
//
//  Created by Sayooj Sojen on 11/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

class CreateVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func backFromCreatePress(_ sender: Any) {
       performSegue(withIdentifier: "unwindToChannelVC", sender: nil)
    }
    

}
