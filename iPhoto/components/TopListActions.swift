//
//  TopListActions.swift
//  iPhoto
//
//  Created by Vinicius Paldês on 22/01/24.
//

import SwiftUI

struct TopListActions: View {
    
    private let dateLabel: String = "28 dec 2023"
    private let locationLabel: String = "caldas novas - Portal das Águas"
    
    var body: some View {
        HStack {
            VStack {
                Text(dateLabel).modifier(LabelStyle(color:  .white, size: 24))
                Text(locationLabel).modifier(LabelStyle(color:  .white, size: 16))
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            HStack {
                Button("Select") {
                    
                }.buttonStyle(AppButton())
                Button("...") {
                    
                }.buttonStyle(AppButton())
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
        }
        .padding(.bottom, 32)
        .padding([.top, .leading, .trailing], 16)
        .background(
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color.black.opacity(0.3), location: 0.7),
                    .init(color: Color.clear, location: 1)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}

#Preview {
    TopListActions()
}
