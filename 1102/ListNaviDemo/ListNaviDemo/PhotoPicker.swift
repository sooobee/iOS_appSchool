//
//  PhotoPicker.swift
//  ListNaviDemo
//
//  Created by 김수비 on 2023/11/05.
//

import Foundation
import SwiftUI
import PhotosUI

struct PhotoPicker: View {
    
    @State private var selectedPhoto: PhotosPickerItem?
    @State private var image: Image?
    
    var body: some View {
        NavigationStack {
            ZStack {
                image?
                    .resizable()
                    .scaledToFit()
            }
            .toolbar {
                PhotosPicker(selection: $selectedPhoto,
                              matching: .images) {
                    Image(systemName: "photo.fill")
                }
            }
            .task(id: selectedPhoto) {
                image = try? await selectedPhoto?.loadTransferable(type: Image.self)
            }
        }
    }
}

struct PhotoPicker_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPicker()
    }
}
