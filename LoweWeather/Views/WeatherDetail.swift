//
//  WeatherDetail.swift
//  LoweWeather
//
//  Created by B on 4/26/21.
//

import SwiftUI

struct WeatherDetail: View {
    
    let weather: Weather
    
    var body: some View {
        VStack {
            Text(String(describing: Int(weather.main_temp!)))
                .font(.system(size: 70, weight: .bold, design: .default))
                .edgesIgnoringSafeArea(.top)
            HStack(alignment: .bottom) {
                Spacer()
                Text("Feels Like: ")
                Text(String(describing: Int(weather.main_feels!)))
            }
            .font(.headline)
            Spacer()
                .frame(height: 60)
            VStack(spacing: 20) {
                HStack {
                    Text(weather.weather_main!)
                        .font(.system(size: 40, weight: .bold, design: .default))
                    Spacer()
                }
                HStack {
                    Text(weather.weather_desc!)
                        .font(.headline)
                    Spacer()
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct WeatherDetail_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
