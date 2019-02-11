//
//  ButtonAttributes.swift
//  smack
//
//  Created by Sayooj Sojen on 11/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

@IBDesignable
class ButtonAttributes: UIButton {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        layer.cornerRadius=5.0
    }
    

}
