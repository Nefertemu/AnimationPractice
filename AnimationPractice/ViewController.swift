//
//  ViewController.swift
//  AnimationPractice
//
//  Created by Bogdan Anishchenkov on 13.09.2022.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    private let animations = Animation.getAnimations()
    
    private var currentAnimation = 0
    
    @IBOutlet var springAnimationView: SpringView!

    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delaylabel: UILabel!
    
    @IBOutlet var runButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.layer.cornerRadius = 30
        runButton.layer.cornerRadius = 15
        
        runAnimation()
        setupAnimationView()
    }

    @IBAction func runButtonPressed(_ sender: SpringButton) {
        runAnimation()
        
        setupAnimationView()
    }
    
    private func setupAnimationView() {
        if currentAnimation <= animations.count {
            presetLabel.text = "preset: " + animations[currentAnimation].preset.rawValue
            curveLabel.text = "curve: \(animations[currentAnimation].curve.rawValue)"
            forceLabel.text = "force: " + String(format: "%.1f", animations[currentAnimation].force)
            durationLabel.text = "duration: " + String(format: "%.1f", animations[currentAnimation].duration)
            delaylabel.text = "delay: " + String(format: "%.1f", animations[currentAnimation].delay)
            
            runButton.setTitle("Run " + animations[currentAnimation + 1].preset.rawValue, for: .normal)
            
            currentAnimation += 1
        }
    }
    
    private func runAnimation() {
        springAnimationView.animation = animations[currentAnimation].preset.rawValue
        springAnimationView.curve = animations[currentAnimation].curve.rawValue
        springAnimationView.force = animations[currentAnimation].force
        springAnimationView.duration = animations[currentAnimation].duration
        springAnimationView.delay = animations[currentAnimation].delay
        springAnimationView.animate()
    }
    
}

