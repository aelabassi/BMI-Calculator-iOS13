//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by aelabass on 30/8/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculateBrain {
    var bmi: BMI?
    
    // Get advice
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    // Get color
    func getColor() -> UIColor{
        return bmi?.color ?? .white
    }
    
    
    // calculate bmi
    mutating func calculateBMI(_ h: Float, _ w: Float){
        let bmiV =  w / pow(h,2)
        switch bmiV {
        case ..<18.5:
            bmi = BMI(value: bmiV, advice: "Eate more pal", color: .blue)
        case 18.5...24.9:
            bmi = BMI(value: bmiV, advice: "Fit as a fiddle", color: .green)
        case 24.9...:
            bmi = BMI(value: bmiV, advice: "Carfeul!, eat less", color: .red)
        default:
            bmi = BMI(value: bmiV, advice: "", color: .white)
        }
    }
    func getBMI() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
}
