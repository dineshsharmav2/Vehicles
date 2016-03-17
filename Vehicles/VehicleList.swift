//
//  VehicleList.swift
//  Vehicles
//
//  Created by Dinesh.sharma on 25/02/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//

import Foundation

class VehicleList{
    let vehicles: [Vehicle]
    
    static var sharedInstance  = VehicleList()
    
    /*private init() {
        vehicles = []
    }
    */
    private init() {
        // Create a car.
        let mustang = Car(brandName: "Ford", modelName: "Mustang", modelYear: 1968, powerSource: "gas engine", isConvertible: true, isHatchback: false, hasSunroof: false, numberOfDoors: 2)
        
        // Create another car.
        let outback = Car(brandName: "Subaru", modelName: "Outback", modelYear: 1999, powerSource: "gas engine", isConvertible: false, isHatchback: true, hasSunroof: false, numberOfDoors: 5)
        
        // Create another car.
        let prius = Car(brandName: "Toyota", modelName: "Prius", modelYear: 2002, powerSource: "hybrid engine", isConvertible: false, isHatchback: true, hasSunroof: true, numberOfDoors: 4)
        
        // Create a motorcycle.
        let harley = Motorcycle(brandName: "Harley-Davidson", modelName: "Softail", modelYear: 1979, engineNoise: "Vrrrrrrrroooooooooom!")
        
        // Create another motorcycle.
        let kawasaki = Motorcycle(brandName: "Kawasaki", modelName: "Ninja", modelYear: 2005, engineNoise: "Neeeeeeeeeeeeeeeeow!")
        
        // Create a truck.
        let silverado = Truck(brandName: "Chevrolet", modelName: "Silverado", modelYear: 2011, powerSource: "gas engine", numberOfWheels: 4, cargoCapacityInCubicFeet: 53)
        
        // Create another truck.
        let eighteenWheeler = Truck(brandName: "Peterbilt", modelName: "579", modelYear: 2013, powerSource: "diesel engine", numberOfWheels: 18, cargoCapacityInCubicFeet: 408)
        
        // Create auto rickshaw.
        let bajajAuto = AutoRikshaw(brandName: "Bajaj Three Wheeler", modelName: "Bajaj-101", modelYear: 2009, powerSource: "LPG Gas", numberOfWheels: 3, engineNoise: "Ghur Ghur Ghur Ghur")
        // Create another auto rickshaw.
        let mahindraAuto = AutoRikshaw(brandName: "Mahindra", modelName: "M&M", modelYear: 2010, powerSource: "Electric", numberOfWheels: 3, engineNoise: "Hnuooo Hnuooo Hnuooo Hnuooo")
       
        
        
        // Sort the array by the model year
        let v = [mustang, outback, prius, harley, kawasaki, silverado, eighteenWheeler,bajajAuto,mahindraAuto]
        
        vehicles = v.sort{$0.modelYear < $1.modelYear }
    }
}