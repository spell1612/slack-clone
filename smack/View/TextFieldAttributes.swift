//
//  TextFieldAttributes.swift
//  smack
//
//  Created by Sayooj Sojen on 11/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit


@IBDesignable
class TextFieldAttributes: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        let place=NSAttributedString(string: placeholder!, attributes: [.foregroundColor : #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) ])
        attributedPlaceholder=place
    }

}
