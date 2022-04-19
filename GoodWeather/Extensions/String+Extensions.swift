//
//  String+Extension.swift
//  GoodWeather
//
//  Created by Adir Elmakais on 18/04/2022.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
