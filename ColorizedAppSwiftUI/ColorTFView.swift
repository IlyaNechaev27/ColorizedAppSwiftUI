//
//  ColorTFView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Нечаев on 02.11.2021.
//

import SwiftUI

struct ColorTFView: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in
            checkValue()
        }
        .frame(width: 55, alignment: .trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong Format!", isPresented: $showAlert, actions: {}) {
            Text("Enter correct value from 0 to 255")
        }
    }
}

extension ColorTFView {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        textValue = "0"
        value = 0
    }
}

struct ColorTFView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorTFView(textValue: .constant("33"), value: .constant(33))
            ColorTFView(textValue: .constant("33"), value: .constant(33))
            ColorTFView(textValue: .constant("33"), value: .constant(33))
        }
    }
}
