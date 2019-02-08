//
//  ChatVC.swift
//  smack
//
//  Created by Sayooj Sojen on 08/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var hamBurgerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hamBurgerButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside) //reveal toggle does an IBaction func inside the support files. We dont have to do it in here
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
        self.view.addGestureRecognizer((self.revealViewController()?.tapGestureRecognizer())!) //JUST call these to add the pan and touch functionalities to the SWReveal
        
        
        
    }
    


}
