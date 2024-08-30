//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by aelabass on 30/8/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculateBrain {
    var bmi: Float = 0.0
    
    // calculate bmi
    mutating func calculateBMI(_ h: Float, _ w: Float){
        bmi =  w / pow(h,2)
    }
    func getBMI() -> String{
        return String(format: "%.1f", bmi)
    }
}
