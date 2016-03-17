//
//  DetailViewController.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import UIKit

class VehicleDetailViewController: UIViewController {
  
  @IBOutlet weak var detailDescriptionLabel: UILabel!
  
  var detailVehicle: Vehicle? {
    didSet {
      // Update the view.
      self.configureView()
    }
  }

  func configureView() {
    // Update the user interface for the detail item.
    if let vehicle = detailVehicle {
      // TODO: Fill this in.
         /*
        title = vehicle.vehicleTitle
        var basicDetails = "Basic vehicle  details:\n\n"
        basicDetails += "Brand name: \(vehicle.brandName)\n"
        basicDetails += "Model name: \(vehicle.modelName)"
        basicDetails += "Model Year: \(vehicle.modelYear)"
        basicDetails += "Power Source: \(vehicle.powerSource)"
        basicDetails += "# of wheels: \(vehicle.numberOfWheels)"
        detailDescriptionLabel?.text = basicDetails
        */
        title = vehicle.vehicleTitle
        detailDescriptionLabel?.text =  vehicle.vehicleDetails
        
    }
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
  }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let vehicle = detailVehicle {
            print(vehicle)
        }
    }
    
  @IBAction func goForward(sender: AnyObject) {
    // TODO: Fill this in.
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle("Go Forward", message: vehicle.goForward())
        presentViewController(controller, animated: true, completion: nil)
    }
    
  }
  
  @IBAction func goBackward(sender: AnyObject) {
    // TODO: Fill this in.
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle("Go Backward", message: vehicle.goBackward())
        presentViewController(controller, animated: true, completion: nil)
    }

  }
  
  @IBAction func stopMoving(sender: AnyObject) {
    // TODO: Fill this in.
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle("Stop Moving", message: vehicle.stopMoving())
        presentViewController(controller, animated: true, completion: nil)
    }
  }
  
  @IBAction func turn(sender: AnyObject) {
    //TODO: Fill this in.
    if let vehicle = detailVehicle {
        
        let controller = UIAlertController.alertControllerWithNumberInput(title: "Turn", message: "Enter number of degrees to turn:", buttonTitle: "Go!") {
            integerValue in
            if let value = integerValue {
                let controller = UIAlertController.alertControllerWithTitle("Turn", message: vehicle.turn(value))
                self.presentViewController(controller, animated: true, completion: nil)
            }
        }
        presentViewController(controller, animated: true) {}
    }
    
  }
  
  @IBAction func makeNoise(sender: AnyObject) {
    // TODO: Fill this in.
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle("Make Some Noise!", message: vehicle.makeNoise())
        presentViewController(controller, animated: true, completion: nil)
    }
  }
  
}
