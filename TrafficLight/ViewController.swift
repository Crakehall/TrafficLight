//
//  ViewController.swift
//  TrafficLight
//
//  Created by Олег Сосницкий on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var currentTrafficLightColor = CurrentTrafficLightColor.red
    private let trafficLightsOff: CGFloat = 0.3
    private let trafficLightOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.alpha = trafficLightsOff
        yellowColorView.alpha = trafficLightsOff
        greenColorView.alpha = trafficLightsOff
        
        startButton.setTitle("START", for: .normal)
    }
    
    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentTrafficLightColor {
        case .red:
            redColorView.alpha = trafficLightOn
            greenColorView.alpha = trafficLightsOff
            currentTrafficLightColor = .yellow
        case .yellow:
            yellowColorView.alpha = trafficLightOn
            redColorView.alpha = trafficLightsOff
            currentTrafficLightColor = .green
        case .green:
            greenColorView.alpha = trafficLightOn
            yellowColorView.alpha = trafficLightsOff
            currentTrafficLightColor = .red
        }
    }
    
}

enum CurrentTrafficLightColor {
    case red
    case yellow
    case green
}
