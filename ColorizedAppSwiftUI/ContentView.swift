//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Нечаев on 30.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        NavigationView {
            
            ZStack {
                LinearGradient(colors: [.mint, .purple], startPoint: .topLeading, endPoint: .bottomLeading)
                    .ignoresSafeArea()
                
                VStack(spacing: 40) {
                    
                    ColorView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                    
                    VStack {
                        SliderView(value: $redSliderValue, color: .red)
                        SliderView(value: $greenSliderValue, color: .green)
                        SliderView(value: $blueSliderValue, color: .blue)
                    }
                    .frame(height: 150)
                    .focused($isInputActive)
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            Spacer()
                            
                            Button("Done") {
                                isInputActive = false
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


