//
//  Constants.swift
//  GoodWeather
//
//  Created by Adir Elmakais on 18/04/2022.
//

import Foundation


struct Constants {
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
//             get the default settings for temperature
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "metric"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&APPID=6356bc2c018526dde90eadcb066bf3be&units=\(unit)")!
        }
        
        
    }
    
}
