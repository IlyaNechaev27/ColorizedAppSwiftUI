//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Нечаев on 02.11.2021.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            ColorLabelView(value: value)
            
            Slider(value: $value, in: 0...255 , step: 1)
                .accentColor(color)
                .onChange(of: value) { isOnFocus in
                     textValue = "\(lround(isOnFocus))"
                }
            
            ColorTFView(textValue: $textValue, value: $value)
                
        }
        .onAppear {
            textValue = "\(lround(value))"
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(32), color: .red)
    }
}
