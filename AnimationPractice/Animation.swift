//
//  Animation.swift
//  AnimationPractice
//
//  Created by Bogdan Anishchenkov on 13.09.2022.
//

import Foundation
import SpringAnimation

struct Animation {
    let preset: AnimationPreset
    let curve: AnimationCurve
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
}

extension Animation {
    static func getAnimations() -> [Animation] {
        var animations = [Animation]()
        
        let shuffledAnimations = AnimationPreset.allCases.shuffled()
        let shuffledCurves = AnimationCurve.allCases.shuffled()
        
        let numberOfIterations = min(shuffledAnimations.count, shuffledCurves.count)
        
        for iteration in 0..<numberOfIterations {
            let animation = Animation(
                preset: shuffledAnimations[iteration],
                curve: shuffledCurves[iteration],
                force: CGFloat.random(in: 1...2),
                duration: CGFloat.random(in: 0.7...1.5),
                delay: CGFloat.random(in: 0.3...0.7))
            animations.append(animation)
        }
        
        return animations.shuffled()
    }
}
