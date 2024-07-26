//
//  AddWeatherCityViewController.swift
//  WeatherApp
//
//  Created by Jason Sanchez on 7/25/24.
//

import UIKit

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed() {
        if let city = cityNameTextField.text {
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=ba0d703a8332b5fa2f3a398e9c401321&units=imperial")!
            
            let weatherResource = Resource<Any>(url: weatherURL) { data in
                return data
            }
            WebService().load(resource: weatherResource) { result in
                
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
