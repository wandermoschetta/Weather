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
                HStack{
                    VStack{
                        Text("Ter.")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("24°")
                            .font(.system(size: 32, weight: .medium))
                            .foregroundColor(.white)
                                         
                    }
                }
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
