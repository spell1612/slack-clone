//
//  ChannelVC.swift
//  smack
//
//  Created by Sayooj Sojen on 08/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var addChannelBtn: UIButton!
    @IBOutlet weak var channelBtnTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){
        
    } //place this before viewdidload
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth=5*self.view.frame.size.width/6
        channelBtnTrailingConstraint.constant=CGFloat(self.view.frame.size.width/6+30)
    }
    //GO TO SWRevealViewController.m initproperties to change more properties manually
    
    
    @IBAction func loginOnTap(_ sender: Any) {
        performSegue(withIdentifier: "toLoginPage", sender: nil)
        
        
    }
}
