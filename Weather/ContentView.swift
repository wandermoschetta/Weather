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
            LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Sao Jose do Rio Preto")
                    .font(.system(size: 32, weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("25°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
            
                }
                HStack(spacing: 10){
                    WeatherDayView(dayOfWeek: "Terc.",
                                   imageName: "cloud.sun.fill",
                                   maxTemperature:"24",
                                   minTemperature: "15")
         
                    WeatherDayView(dayOfWeek: "Quar.",
                                   imageName: "cloud.sun.fill",
                                   maxTemperature: "25",
                                   minTemperature: "16")
         
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
               .frame(width: 50, height: 50)
           
           HStack{	
               Text("Max.")
                   .font(.system(size: 16, weight: .medium))
                   .foregroundColor(.white)
               
               Text("\(maxTemperature)°")
                   .font(.system(size: 32, weight: .medium))
                   .foregroundColor(.white)
           }
           
           HStack(){
               Text("Min.")
                   .font(.system(size: 16, weight: .medium))
                   .foregroundColor(.white)
               
               Text("\(minTemperature)°")
                   .font(.system(size: 32, weight: .medium))
                   .foregroundColor(.white)
           }
       }
       
    }
}

#Preview {
    ContentView()
}
