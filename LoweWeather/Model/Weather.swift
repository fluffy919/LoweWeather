//
//  Weather.swift
//  LoweWeather
//
//  Created by B on 4/22/21.
//

import Foundation
import SwiftyJSON

struct Weather: Codable, Identifiable {
    var id = UUID()
    var main_temp: Float?
    var weather_main: String?
    var weather_desc: String?
    let main_feels: Float?
    let main_min: Float?
    
    init(json: JSON) {
        main_temp = json["main"]["temp"].float
        main_feels = json["main"]["feels_like"].float
        main_min = json["main"]["temp_min"].float
        weather_main = json["weather"][0]["main"].string
        weather_desc = json["weather"][0]["description"].string
    }
}
