//
//  ViewController.swift
//  Clima
//
//  Created by Oguzhan Bolat on 01/07/2023.
//  Copyright © 2023 Oguzhan Bolat. All rights reserved.
//d

import UIKit

class WeatherViewController: UIViewController,UITextFieldDelegate {

    var weather = WeatherManager()
    
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
        
    }

    @IBAction func searchButton(_ sender: UIButton) {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        }
        else {
            textField.placeholder = "Type something"
            return false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if let city = searchTextField.text {
            weather.fetchWeather(cityName: city)
        }
    }
    
}

