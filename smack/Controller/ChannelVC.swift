//
//  ChannelVC.swift
//  smack
//
//  Created by Sayooj Sojen on 08/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth=5*self.view.frame.size.width/6
        
    }
    //GO TO SWRevealViewController.m initproperties to change more properties manually 
}
