//
//  DataStore.swift
//  AnimationPractice
//
//  Created by Bogdan Anishchenkov on 15.09.2022.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    let animationPresets = [
        "pop", "slideLeft", "slideRight", "slideDown", "slideUp", "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp", "fadeIn", "fadeOut", "fadeOutIn", "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn", "zoomOut", "fall", "shake", "flipX", "flipY", "morph", "squeeze", "flash", "wobble", "swing"
    ]
    
    let animationCurves = [
        "easeIn", "easeOut", "easeInOut", "linear", "spring", "easeInSine", "easeOutSine", "easeInOutSine", "easeInQuad", "easeOutQuad", "easeInOutQuad", "easeInCubic", "easeOutCubic", "easeInOutCubic", "easeInQuart", "easeOutQuart", "easeInOutQuart", "easeInQuint", "easeOutQuint", "easeInOutQuint", "easeInExpo", "easeOutExpo", "easeInOutExpo", "easeInCirc", "easeOutCirc", "easeInOutCirc", "easeInBack", "easeOutBack", "easeInOutBack"
    ]
    
    private init() {}
}
