//
//  ColorLabelView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Нечаев on 02.11.2021.
//

import SwiftUI

struct ColorLabelView: View {
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 40)
            .foregroundColor(.white)
    }
}

struct ColorLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ColorLabelView(value: 32.234)
    }
}
