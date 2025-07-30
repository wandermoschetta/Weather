//
//  ContentView.swift
//  Weather
//
//  Created by Wander Dos Santos Moschetta on 17/07/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            
            VStack{
                CityTextView(city: "São José do Rio Preto")
                
                MainWeatherStatusView(temperature: 25,
                                      imageName: "cloud.sun.fill")
                
                HStack(spacing: 10){
                    WeatherDayView(dayOfWeek: "Ter.",
                                   imageName: "cloud.sun.fill",
                                   maxTemperature:24,
                                   minTemperature: 15)
         
                    WeatherDayView(dayOfWeek: "Qua.",
                                   imageName: "sun.max.fill",
                                   maxTemperature: 30,
                                   minTemperature: 19)
                    
                    WeatherDayView(dayOfWeek: "Qui.",
                                   imageName: "cloud.sun.fill",
                                   maxTemperature: 26,
                                   minTemperature: 15)
                    
                    WeatherDayView(dayOfWeek: "Qui.",
                                   imageName: "cloud.sun.fill",
                                   maxTemperature: 26,
                                   minTemperature: 15)
         
                }
                Spacer()
                
                Button{
                    print("tapped...")
                } label: {
                    WeatherButton(title: "Change Day Time",
                                      textColor: .blue,
                                      backgroundColor: .white)
                                      
                    
                }
                
                Spacer()
            }
        }
        
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var maxTemperature: Int
    var minTemperature: Int
    
    
    var body: some View {
       VStack{
           Text(dayOfWeek)
               .font(.system(size: 16, weight: .medium, design: .default))
               .foregroundColor(.white)
               
           Image(systemName: imageName)
               .renderingMode(.original)
               .resizable()
               .aspectRatio(contentMode: .fit)
               .frame(width: 50, height: 40)
           
           HStack(spacing: 5){
               Text("Max.")
                   .font(.system(size: 14, weight: .medium))
                   .foregroundColor(.white)
               
               Text("\(maxTemperature)°")
                   .font(.system(size: 28, weight: .medium))
                   .foregroundColor(.white)
           }
           
           HStack(spacing: 5){
               Text("Min.")
                   .font(.system(size: 14, weight: .medium))
                   .foregroundColor(.white)
               
               Text("\(minTemperature)°")
                   .font(.system(size: 28, weight: .medium))
                   .foregroundColor(.white)
           }
           
       }
       
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct CityTextView: View {
    var city: String
    
    var body: some View {
        Text("\(city)")
            .font(.system(size: 32, weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var temperature: Int
    var imageName: String
    
    var body: some View {
    
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
    
        }
    }
}


#Preview {
    ContentView()
}
