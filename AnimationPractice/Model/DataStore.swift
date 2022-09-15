//
//  DataStore.swift
//  AnimationPractice
//
//  Created by Bogdan Anishchenkov on 15.09.2022.
//

import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let animationPresets = AnimationPreset.allCases
    let animationCurves = AnimationCurve.allCases
    
    private init() {}
}
