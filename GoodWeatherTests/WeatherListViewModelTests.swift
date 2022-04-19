//
//  WeatherListViewModelTests.swift
//  GoodWeatherTests
//
//  Created by Adir Elmakais on 19/04/2022.
//

import XCTest
@testable import GoodWeather

class WeatherListViewModelTests: XCTestCase {

    private var weatherListVM: WeatherListViewModel!
    
    
    override func setUp() {
        super.setUp()
        
        self.weatherListVM = WeatherListViewModel()
        
        self.weatherListVM.addWeatherViewModel(WeatherViewModel(weather: WeatherResponse(name: "Israel", main: Weather(temp: 32, humidity: 50))))
        
        self.weatherListVM.addWeatherViewModel(WeatherViewModel(weather: WeatherResponse(name: "London", main: Weather(temp: 72, humidity: 80))))
    }
    
    func test_should_be_able_to_convert_to_celsius_successfully() {
        
        let celsiusTempratures = [0,22.2222]
        self.weatherListVM.updateUnit(to: .celsius)
        
        for (index, vm) in self.weatherListVM.weatherViewModels.enumerated() {
            XCTAssertEqual(round(vm.temperature), round(celsiusTempratures[index]))
        }
    }
    
    
    
    
    
    override func tearDown() {
        super.tearDown()
    }

}
