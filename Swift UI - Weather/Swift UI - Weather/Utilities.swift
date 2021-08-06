//
//  Utilities.swift
//  Swift UI - Weather
//
//  Created by Jacob Trentini on 6/4/21.
//

import SwiftUI

struct BlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color.white : Color.blue)
            .background(configuration.isPressed ? Color.blue : Color.white)
            .cornerRadius(6.0)
            .padding()
    }
}

struct WeatherButton: View {
    
    var title: String
    var maxWidth: CGFloat!
    var maxHeight: CGFloat!
    var systemFontSize: CGFloat!
    var systemFontWeight: Font.Weight
    var systemFontDesign: Font.Design
    
    var body: some View {
        Button(action: {
            
            
        }) {
            Text(title)
                .frame(maxWidth: maxWidth, maxHeight: maxHeight)
                .font(.system(size: systemFontSize, weight: systemFontWeight, design: systemFontDesign))
        }
        .buttonStyle(BlueButtonStyle())
    }
}

struct WeatherTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
    }
}


