//
//  UIAlertController+Convenience.swift
//  Vehicles
//
//  Created by Dinesh.sharma on 24/02/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    class func alertControllerWithTitle(title:String, message:String) -> UIAlertController{
        let controller = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        controller.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
        return controller
    }
    
    class func alertControllerWithNumberInput(title title:String, message:String, buttonTitle:String, handler:(Int?)->Void) -> UIAlertController {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        controller.addTextFieldWithConfigurationHandler { $0.keyboardType = .NumberPad }
        
        controller.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        controller.addAction(UIAlertAction(title: buttonTitle, style: .Default) { action in
            let textFields = controller.textFields! as [UITextField]
            var textfiledValue = textFields[0].text!
            //let value = textFields[0].text!.toInt()
            let myInt: Int? = Int(textfiledValue)
            
            handler(myInt)
            } )
        
        return controller
    }
}

