//
//  PhotoList.swift
//  iPhoto
//
//  Created by Vinicius Paldês on 22/01/24.
//

import SwiftUI
import Photos

struct PhotoList: View {

    @State private var photos = [UIImage]()

    private func fetchPhotos() -> [UIImage] {
        var images = [UIImage]()
        let assets = PHAsset.fetchAssets(with: .image, options: nil)
        
        assets.enumerateObjects { (asset, _, _) in
            let manager = PHImageManager.default()
            let options = PHImageRequestOptions()
            options.version = .original
            options.isSynchronous = true
            manager.requestImage(for: asset,
                                 targetSize: CGSize(width: 300, height: 300),
                                 contentMode: .aspectFill,
                                 options: options) { (image, _) in
                if let image = image {
                    images.append(image)
                }
            }
        }
        return images
    }
    
    private func loadPhotos() {
        let status = PHPhotoLibrary.authorizationStatus()
        if status == .authorized {
            photos = fetchPhotos()
        } else {
            PHPhotoLibrary.requestAuthorization { newStatus in
                if newStatus == .authorized {
                    photos = fetchPhotos()
                }
                // Handle other cases or denial of permission
            }
        }
    }
    
    var body: some View {
        ZStack {
            PhotosGridView(photos: photos)
                .onAppear(perform: loadPhotos)
            VStack {
                TopListActions()
                Spacer()
                BottomFilter()
            }
        }
        
    }
}

#Preview {
    PhotoList()
}
