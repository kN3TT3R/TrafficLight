//
//  ViewController.swift
//  TrafficLight
//
//  Created by VDAB Cursist on 16/01/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: - Global Properties    
    enum Bulbs {
        case red, yellow, green
    }
    
    enum State {
        case stateTrue, stateFalse
    }
    
    struct Bulb {
        let color: Bulbs
    }
    
    struct TrafficLight {
        var redBulb: Bulb
        var yellowBulb: Bulb
        var greenBulb: Bulb
        var state: State
        //var state: Bool
    }

    var trafficLight = TrafficLight(
        redBulb: Bulb(color: .red),
        yellowBulb: Bulb(color: .yellow),
        greenBulb: Bulb(color: .green),
        state: .stateFalse
        //state: false
    )

    
    // MARK: - IBOutlets
    @IBOutlet weak var trafficLightSwitch: UISwitch!
    @IBOutlet weak var redBulb: UIImageView!
    @IBOutlet weak var yellowBulb: UIImageView!
    @IBOutlet weak var greenBulb: UIImageView!
    
    
    // MARK: - Overridden Functions
    override func viewDidLoad() {
        redBulb.backgroundColor = UIColor.red
        yellowBulb.backgroundColor = UIColor.black
        greenBulb.backgroundColor = UIColor.black
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    // MARK: - IBActions
    @IBAction func switchedTrafficLight(_ sender: UISwitch) {
        if trafficLightSwitch.isOn {
            trafficLight.state = .stateTrue
            //trafficLight.state = true
        } else {
            trafficLight.state = .stateFalse
            //trafficLight.state = false
        }
        updateBulbs()
    }
    
    
    // MARK: - Homemade Functions
    func updateBulbs() {
        switch trafficLight.state {
            case .stateTrue:    redBulb.backgroundColor = UIColor.black
                                yellowBulb.backgroundColor = UIColor.black
                                greenBulb.backgroundColor = UIColor.green
            case .stateFalse:   redBulb.backgroundColor = UIColor.red
                                yellowBulb.backgroundColor = UIColor.black
                                greenBulb.backgroundColor = UIColor.black
    }
        
//        if trafficLight.state == true {
//            redBulb.backgroundColor = UIColor.black
//            yellowBulb.backgroundColor = UIColor.black
//            greenBulb.backgroundColor = UIColor.green
//        } else {
//            redBulb.backgroundColor = UIColor.red
//            yellowBulb.backgroundColor = UIColor.black
//            greenBulb.backgroundColor = UIColor.black
//        }
    }
}



















