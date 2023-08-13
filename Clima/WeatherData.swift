//
//  WeatherData.swift
//  Clima
//
//  Created by Oğuz on 13.08.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name : String
    let main : Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id : Int
    let description: String
}
