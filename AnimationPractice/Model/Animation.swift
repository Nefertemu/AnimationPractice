//
//  Animation.swift
//  AnimationPractice
//
//  Created by Bogdan Anishchenkov on 13.09.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
}

extension Animation {
    static func getAnimations() -> [Animation] {
        var animations = [Animation]()
        
        let shuffledAnimations = DataStore.shared.animationPresets.shuffled()
        let shuffledCurves = DataStore.shared.animationPresets.shuffled()
        
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
