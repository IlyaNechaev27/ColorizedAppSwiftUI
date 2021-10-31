//
//  LabelSliderAndTFBoard.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Нечаев on 31.10.2021.
//

import SwiftUI

struct LabelSliderAndTFBoard: View {
    let sliderColor: Color
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack(spacing: 20) {
            
            Text(String(format: "%.0f", sliderValue))
                .frame(width: 40)
            
            Slider(value: $sliderValue, in: 0...255)
                .frame(width: 220)
                .accentColor(sliderColor)
                
            TextField("", value: $sliderValue, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
        }
        .frame(height: 40)
        .padding()
        
    }
}

struct LabelSliderAndTFBoard_Previews: PreviewProvider {
    static var previews: some View {
        LabelSliderAndTFBoard(sliderColor: .red, sliderValue: .constant(2))
    }
}
