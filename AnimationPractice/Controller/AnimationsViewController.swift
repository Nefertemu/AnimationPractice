//
//  ViewController.swift
//  AnimationPractice
//
//  Created by Bogdan Anishchenkov on 13.09.2022.
//

import UIKit
import SpringAnimation

final class AnimationsViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var labels: [UILabel]!
    @IBOutlet var runButton: SpringButton!
    
    // MARK: - Private properties
    
    private let animations = Animation.getAnimations()
    
    private var currentAnimation = 0
    
    // MARK: - LifeCycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.layer.cornerRadius = 30
        runButton.layer.cornerRadius = 15
        
        setGradientBackground()
        setupAnimationView()
        
        runAnimation()
    }
    
    // MARK: - IBActions

    @IBAction func runButtonPressed(_ sender: SpringButton) {
        runAnimation()
        
        setupAnimationView()
    }
    
    // MARK: - Private methods
    
    private func setupAnimationView() {
        if currentAnimation <= animations.count {
            for label in labels {
                switch label.tag {
                case 1:
                    label.text = "preset: " + animations[currentAnimation].preset
                case 2:
                    label.text = "curve: \(animations[currentAnimation].curve)"
                case 3:
                    label.text = "force: " + String(format: "%.1f", animations[currentAnimation].force)
                case 4:
                    label.text = "duration: " + String(format: "%.1f", animations[currentAnimation].duration)
                default:
                    label.text = "delay: " + String(format: "%.1f", animations[currentAnimation].delay)
                }
            }
            
            currentAnimation += 1
            
            runButton.setTitle("Run " + animations[currentAnimation].preset, for: .normal)
        }
    }
    
    private func runAnimation() {
        springAnimationView.animation = animations[currentAnimation].preset
        springAnimationView.curve = animations[currentAnimation].curve
        springAnimationView.force = animations[currentAnimation].force
        springAnimationView.duration = animations[currentAnimation].duration
        springAnimationView.delay = animations[currentAnimation].delay
        springAnimationView.animate()
    }
    
    private func setGradientBackground() {
        let colorTop =  UIColor(
            red: 200.0/255.0,
            green: 150.0/255.0,
            blue: 100.0/255.0,
            alpha: 1.0).cgColor
        let colorBottom = UIColor(
            red: 50.0/255.0,
            green: 50.0/255.0,
            blue: 50.0/255.0,
            alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
}

