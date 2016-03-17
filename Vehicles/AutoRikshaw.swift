//
//  AutoRikshaw.swift
//  Vehicles
//
//  Created by Dinesh.sharma on 23/02/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//

import Foundation

class AutoRikshaw : Vehicle {

    var engineNoise = ""
    /*
    override init() {
        super.init()
        numberOfWheels = 3
        //powerSource = "gas engine"
    }
    */
    init(brandName: String, modelName: String, modelYear: Int, powerSource: String, numberOfWheels: Int, engineNoise:String) {
        self.engineNoise = engineNoise
        super.init(brandName: brandName, modelName: modelName, modelYear: modelYear,
            powerSource: powerSource, numberOfWheels: 3)
    }
    
    
    override var vehicleDetails: String {
        //Get basic details from superclass
        let basicDetails = super.vehicleDetails
        //print("%@", basicDetails)
        
        //Initialize mutable string
        var autoricksawDetailsBuilder = "\n\nAutoricksaw-Specific Details:\n\n"
        
        //Add info about motorcycle-specific features.
        autoricksawDetailsBuilder += "Engine Noise: \(engineNoise)"
        
        let motorcycleDetails = basicDetails + autoricksawDetailsBuilder
        
        return motorcycleDetails
    }
    
    // MARK: - Superclass Overrides
    override func goForward() -> String {
        return String(format: "%@ Open throttle(autorikshaw).", changeGears("Forward"))
    }
    
    override func goBackward() -> String {
        return String(format: "%@ Walk %@ backwards using feet(autorikshaw).", changeGears("Neutral"), modelName)
    }
    
    override func stopMoving() -> String {
        return "Simple Break"
    }
    
    override func makeNoise() -> String {
        return self.engineNoise
    }
    
}