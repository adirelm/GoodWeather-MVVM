//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Adir Elmakais on 18/04/2022.
//

import Foundation
import UIKit

protocol AddWeatherDelegete {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    private var addWeatherVM = AddWeatherViewModel()
    
    var delegate: AddWeatherDelegete?
    
    @IBAction func saveCityButtonPressed() {
        if let city = cityNameTextField.text {
            addWeatherVM.addWeather(for: city) { (vm) in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true)
            }
        }

        
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
