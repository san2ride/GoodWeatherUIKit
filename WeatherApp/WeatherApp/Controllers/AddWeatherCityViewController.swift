//
//  AddWeatherCityViewController.swift
//  WeatherApp
//
//  Created by Jason Sanchez on 7/25/24.
//

import UIKit

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    private var addWeatherVM = AddWeatherViewModel()
    
    @IBAction func saveCityButtonPressed() {
        if let city = cityNameTextField.text {
            addWeatherVM.addWeather(for: city) { (vm) in
                
            }
        }
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    

    

}
