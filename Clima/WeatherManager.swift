//
//  WeatherManager.swift
//  Clima
//
//  Created by Oğuz on 13.08.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?q=London&appid=305fe031ca7a3efd29754c845099e1de&units=metric"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
    
    func performRequest(urlString: String){
        
        // 1. Create a URL
        // 2. Create a URLSession
        // 3. Give the session a task
        // 4. Start the task 
    }
}
