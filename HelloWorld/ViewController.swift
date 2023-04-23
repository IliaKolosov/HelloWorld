//
//  ViewController.swift
//  HelloWorld
//
//  Created by ILIA on 18.04.2023.
//

import UIKit

enum CurrentLight {
    case red, orange, green
}

final class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var orangeLight: UIView!
    
    private var currentLight = CurrentLight.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    @IBOutlet var buttonStart: UIButton!
    private var cornerRadius: CGFloat = 90
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = cornerRadius
        greenLight.layer.cornerRadius = cornerRadius
        orangeLight.layer.cornerRadius = cornerRadius
        
        redLight.alpha = lightOff
        orangeLight.alpha = lightOff
        greenLight.alpha = lightOff
    }
    
    @IBAction func buttonStartTappet() {
        if buttonStart.currentTitle == "Start"{
            buttonStart.setTitle("Next", for: .normal)
            
        }
        switch currentLight {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            currentLight = .orange
        case .orange:
            redLight.alpha = lightOff
            orangeLight.alpha = lightOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightOn
            orangeLight.alpha = lightOff
            currentLight = .red
        }
    }
}

