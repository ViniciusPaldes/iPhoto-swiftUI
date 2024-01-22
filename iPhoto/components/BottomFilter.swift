//
//  BottomFilter.swift
//  iPhoto
//
//  Created by Vinicius Paldês on 22/01/24.
//

import SwiftUI

struct BottomFilter: View {
    @State private var selection: String = "Years"

    var body: some View {
        HStack {
            HStack {
                ForEach(["Years", "Months", "Days", "All Photos"], id: \.self) { option in
                    Button(action: {
                        self.selection = option
                    }) {
                        Text(option)
                            .foregroundColor(self.selection == option ? .white : Color.gray)
                            .padding([.top, .bottom], 8)
                            .padding([.leading, .trailing], 16)
                            .background(self.selection == option ? Color.gray.opacity(0.8) : Color.clear)
                            .cornerRadius(30)
                            .font(.system(size: 14, weight: Font.Weight.bold))
                        }
                    }
                
                }
                .padding(3)
                .background(Color.lightGray.opacity(0.8))
                .cornerRadius(30)
        }
        .padding([.top, .bottom], 32)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color.clear, location: 0.1),
                    .init(color: Color.black.opacity(0.3), location: 0.4)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}

#Preview {
    BottomFilter()
}
