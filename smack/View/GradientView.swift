//
//  GradientView.swift
//  smack
//
//  Created by Sayooj Sojen on 08/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1){
        didSet{
            self.setNeedsLayout() //tells to live updates storyboard
        }
    }
    
    @IBInspectable var bottomColor: UIColor=#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1){
        didSet{
            self.setNeedsLayout() //tells to live updates storyboard views
        }
    }
    
    //these two declarations are used to style the gradient
    
    override func layoutSubviews() {  //here goes the things the views are updated with
        let gradientLayer = CAGradientLayer() //A layer that draws a color gradient over its background color, filling the shape of the layer (including rounded corners)
        
        gradientLayer.colors=[topColor.cgColor,bottomColor.cgColor]
        gradientLayer.startPoint=CGPoint(x: 0, y: 0)
        gradientLayer.endPoint=CGPoint(x: 1, y: 1)
        gradientLayer.frame=self.bounds //dont use views.frame in UIView controllers
        self.layer.insertSublayer(gradientLayer, at: 0)//insert as sublayer
        
    }
    
}
