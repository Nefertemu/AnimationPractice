//
//  ViewController.swift
//  AnimationPractice
//
//  Created by Bogdan Anishchenkov on 13.09.2022.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    let animations = Animation.getAnimations()
    
    @IBOutlet var springAnimationView: SpringView!

    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delaylabel: UILabel!
    
    @IBOutlet var runButton: SpringButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runButtonPressed(_ sender: SpringButton) {
        springAnimationView.animation
        springAnimationView.animate()
    }
    
}

