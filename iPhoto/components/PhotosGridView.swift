//
//  PhotosGridView.swift
//  iPhoto
//
//  Created by Vinicius Paldês on 22/01/24.
//

import SwiftUI

struct PhotosGridView: View {
    let photos: [UIImage]

    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 3) {
                ForEach(photos, id: \.self) { photo in
                    Image(uiImage: photo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 130, height: 130)
                        .clipped()
                }
            }
        }
    }
}

#Preview {
    PhotosGridView(photos: [])
}

