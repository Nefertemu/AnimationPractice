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
        
        let numberOfIterations = min(DataStore.shared.animationPresets.count, DataStore.shared.animationCurves.count)
        
        for _ in 0..<numberOfIterations {
            let animation = Animation(
                preset: DataStore.shared.animationPresets.randomElement()?.rawValue ?? "slideLeft",
                curve: DataStore.shared.animationCurves.randomElement()?.rawValue ?? "easeIn",
                force: CGFloat.random(in: 1...2),
                duration: CGFloat.random(in: 0.7...1.5),
                delay: CGFloat.random(in: 0.3...0.7))
            animations.append(animation)
        }
        
        return animations.shuffled()
    }
}
