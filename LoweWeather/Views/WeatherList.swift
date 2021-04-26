//
//  WeatherList.swift
//  LoweWeather
//
//  Created by B on 4/25/21.
//

import SwiftUI

struct WeatherList: View {
    
    @State var weathers: [Weather] = [Weather]()
    @State var city: String
    
    var body: some View {
        List(weathers) { weather in
            NavigationLink(destination: WeatherDetail(weather: weather)) {
                HStack {
                    Text(weather.weather_main!)
                    Spacer()
                    Text("Temp:")
                    Text(String(describing: Int(weather.main_temp!)))
                }
                .padding()
            }
        }
        .navigationBarTitle(city, displayMode: .inline)
        .onAppear() {
            APICall().getWeather(city: city) { (results) in
                self.weathers = results
            }
        }
    }
}

struct WeatherList_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
