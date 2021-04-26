//
//  ContentView.swift
//  LoweWeather
//
//  Created by B on 4/22/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var city: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                TextField("City Name", text: $city)
                    .multilineTextAlignment(.center)
                Divider()
                NavigationLink(destination: WeatherList(city: city)) {
                    Text("Lookup")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1))
                }
                .padding()
            }
            .padding()
        }
        .navigationBarHidden(true)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
