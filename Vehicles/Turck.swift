//
//  Turck.swift
//  Vehicles
//
//  Created by Dinesh.sharma on 24/02/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//

import Foundation

class Truck : Vehicle {
    var cargoCapacityCubicFeet: Int = 0
    
    init(brandName: String, modelName: String, modelYear: Int, powerSource: String, numberOfWheels: Int, cargoCapacityInCubicFeet:Int) {
        self.cargoCapacityCubicFeet = cargoCapacityInCubicFeet
        super.init(brandName: brandName, modelName: modelName, modelYear: modelYear,
            powerSource: powerSource, numberOfWheels: numberOfWheels)
    }
    
    //MARK: - Superclass overrides
    override func goForward() -> String {
        return String(format:"%@ Depress gas pedal.", changeGears("Drive"))
    }
    
    override func stopMoving() -> String {
        return String(format:"Depress brake pedal. %@", changeGears("Park"))
    }
    
    private func soundBackupAlarm() -> String{
        return "Beep! Beep! Beep!"
    }
    
    override func goBackward() -> String {
        if cargoCapacityCubicFeet > 100 {
            return String(format: "Wait for \"%@\" , then %@ ", soundBackupAlarm(), changeGears("Reverse"))
        }else {
            return String(format: "%@ Depress gas pedal.", changeGears("Reverse"))
        }
    }
    
    override func makeNoise() -> String {
        switch numberOfWheels {
        case Int.min...4:
            return "Beep beep!"
        case 5...8:
            return "Hook"
        default:
            return "HOOOOOOOOONK!"
        }
    }
    
    override var vehicleDetails: String {
        let basicDetails = super.vehicleDetails
        
        //initialize mutable string
        var truckDetailsBuilder = "\n\nTruck-Speciic Details: \n\n"
        truckDetailsBuilder += "Cargo Capacity: \(cargoCapacityCubicFeet) cubic feet"
        let truckDetails = basicDetails + truckDetailsBuilder
        return truckDetails
    }
}


