//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Adir Elmakais on 18/04/2022.
//

import Foundation

extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
        
    }
}
