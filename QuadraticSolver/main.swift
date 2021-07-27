//
//  main.swift
//  QuadraticSolver
//
//  Created by Dzmitry Navitski on 22.07.2021.
//

import Foundation

var flag = true

while flag {
    var coeficients = Array<Double>()
    
    while coeficients.count != 3 {
        print("Enter coefficient #\(coeficients.count + 1)")
        if let value = readLine() {
            if value.isEmpty {
                coeficients.append(1)
                continue
            }
            if let coefficient = Double(value) {
                coeficients.append(coefficient)
            } else {
                print("Input error, only digits allowed")
            }
        }
    }
    
    let discriminant = pow(coeficients[1], 2) - (4 * coeficients[0] * coeficients[2])
    print("Discriminant value: \(discriminant)")
    
    if discriminant < 0 {
        print("There are no valid roots")
    }
    if discriminant >= 0 {
        let x1 = (-coeficients[1] + sqrt(discriminant)) / (2 * coeficients[0])
        print("First root x1: \(x1)")
    }
    if discriminant > 0 {
        let x2 = (-coeficients[1] - sqrt(discriminant)) / (2 * coeficients[0])
        print("Second root x2: \(x2)")
    }
    
    print("Press Enter to continue or enter -q to quit")
    if let input = readLine(), input == "-q" {
        flag = false
    }
}






