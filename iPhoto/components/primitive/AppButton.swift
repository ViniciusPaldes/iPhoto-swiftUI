//
//  AppButton.swift
//  iPhoto
//
//  Created by Vinicius Paldês on 22/01/24.
//
import SwiftUI

struct AppButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? Color.gray : Color.gray)
            .foregroundColor(.white)
            .cornerRadius(50)
            .font(.system(size: 12, weight: Font.Weight.bold))
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}
