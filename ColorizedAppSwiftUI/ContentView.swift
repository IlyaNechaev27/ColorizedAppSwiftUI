//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Нечаев on 30.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue: Double = 224
    @State private var greenSliderValue: Double = 61
    @State private var blueSliderValue: Double = 94
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.mint, .purple], startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(Color(red: redSliderValue / 255, green: greenSliderValue / 255, blue: blueSliderValue / 255))
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(.white, lineWidth: 5))
                    .frame(height: 150)
                    .padding()
                
                Spacer()
                
                LabelSliderAndTFBoard(sliderColor: .red, sliderValue: $redSliderValue)
                LabelSliderAndTFBoard(sliderColor: .green, sliderValue: $greenSliderValue)
                LabelSliderAndTFBoard(sliderColor: .blue, sliderValue: $blueSliderValue)
                
                Spacer()
            }
        }
        .onTapGesture {
            self.dismissKeyboard()
        }
    }
}

extension View {
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


