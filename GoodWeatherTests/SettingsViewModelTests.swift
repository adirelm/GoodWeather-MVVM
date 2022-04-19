//
//  SettingsViewModelTests.swift
//  GoodWeatherTests
//
//  Created by Adir Elmakais on 19/04/2022.
//

import XCTest
@testable import GoodWeather

class SettingsViewModelTests: XCTestCase {
    
    private var settingsVM: SettingsViewModel!
    
    override func setUp() {
        super.setUp()
        
        self.settingsVM = SettingsViewModel()
        
    }
    
    func test_should_make_sure_that_default_selected_unit_is_fahrenheit() {
        
        XCTAssertEqual(settingsVM.selectedUnit, .celsius)
    }
    
    func test_should_return_correct_display_name_for_celsius() {
        XCTAssertEqual(self.settingsVM.selectedUnit.displayName, "Celsius")
    }
    
    func test_should_be_able_to_save_user_unit_selection() {
        
        self.settingsVM.selectedUnit = .fahrenheit
        let userDefaults = UserDefaults.standard
        XCTAssertNotNil(userDefaults.value(forKey: "unit"))
        userDefaults.removeObject(forKey: "unit")
    }
    

}
