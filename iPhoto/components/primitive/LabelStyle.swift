//
//  LabelStyle.swift
//  iPhoto
//
//  Created by Vinicius Paldês on 22/01/24.
//

import SwiftUI

struct LabelStyle: ViewModifier {
    var color: Color
    var size: CGFloat

    func body(content: Content) -> some View {
        content
            .foregroundColor(color)
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: size, weight: Font.Weight.heavy))
    }
}
