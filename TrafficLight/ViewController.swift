//
//  ViewController.swift
//  TrafficLight
//
//  Created by Kenneth Debruyn on 16/01/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.
//

/*
        Built for iPhone SE - Portait
 */

import UIKit

class ViewController: UIViewController {

    
    // MARK: - Global Properties    
    enum Bulbs {
        case red, green
    }
    
    enum State {
        case stateTrue, stateFalse
    }
    
    struct Bulb {
        let color: Bulbs
    }
    
    struct TrafficLight {
        var redBulb: Bulb
        var greenBulb: Bulb
        var state: State
    }

    var trafficLight = TrafficLight(
        redBulb: Bulb(color: .red),
        greenBulb: Bulb(color: .green),
        state: .stateFalse
    )

    
    // MARK: - IBOutlets
    @IBOutlet weak var trafficLightSwitch: UISwitch!
    @IBOutlet weak var redBulb: UIImageView!
    @IBOutlet weak var greenBulb: UIImageView!
    
    
    // MARK: - Overridden Functions
    override func viewDidLoad() {
        redBulb.backgroundColor = UIColor.red
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
        } else {
            trafficLight.state = .stateFalse
        }
        updateBulbs()
    }
    
    
    // MARK: - Homemade Functions
    func updateBulbs() {
        switch trafficLight.state {
            case .stateTrue:    redBulb.backgroundColor = UIColor.black
                                greenBulb.backgroundColor = UIColor.green
            case .stateFalse:   redBulb.backgroundColor = UIColor.red
                                greenBulb.backgroundColor = UIColor.black
        }
    }
}



















