//
//  APICall.swift
//  LoweWeather
//
//  Created by B on 4/24/21.
//

import Foundation
import Alamofire
import SwiftyJSON

public class APICall {
    
    let API_KEY = "65d00499677e59496ca2f318eb68c049"
    
    func getWeather(city: String, completionHandler: @escaping ([Weather]) -> ()) {
        
        var weathers: [Weather] = [Weather]()

        AF.request("https://api.openweathermap.org/data/2.5/forecast?q=\(city)&units=imperial&appid=\(API_KEY)").responseJSON { response in
            let json = JSON(response.value as Any)
            for weather in json["list"].arrayValue {
                weathers.append(Weather(json: weather))
            }
            completionHandler(weathers)
        }
    }    
}
