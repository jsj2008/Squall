//
//  ViewController.swift
//  Accelerometer
//
//  Created by Marcus Eckert on 20.09.2016.
//  Copyright © 2016 Marcus Eckert AS. All rights reserved.
//

import UIKit
import Squall

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animation = SLSquallAnimation(fromBundle: "accelerometer.sqa")
        self.view.layer.addSublayer(animation!)
        self.view.backgroundColor = UIColor(red: 101.0/255.0, green: 44.0/255.0, blue: 218.0/255.0, alpha: 1.0)
        
        let layer = animation!.getLayersWithName("Expression Controls")![0]
        
        //Our Expression Controller does most of the heavy lifting
        let controls = ExpressionController(frame: self.view.frame)
        controls.animation = animation
        controls.connectControlsFromProperties(properties: layer.expressionControls)
        self.view.addSubview(controls)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
}

