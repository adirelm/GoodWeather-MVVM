//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Adir Elmakais on 18/04/2022.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
