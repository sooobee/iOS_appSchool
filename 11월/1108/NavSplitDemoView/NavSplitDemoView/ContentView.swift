//
//  ContentView.swift
//  NavSplitDemoView
//
//  Created by 김수비 on 11/8/23.
//

import SwiftUI
import Foundation

struct IconCategory: Identifiable, Hashable {
    let id = UUID()
    var categoryName: String
    var images: [String]
}

struct ContentView: View {

    @State private var categories = [
        IconCategory(categoryName: "Folders", images: ["questionmark.folder.ar",
                                                       "questionmark.folder",
                                                       "questionmark.folder.fill.ar",
                                                       "folder.fill.badge.gear",
                                                       "questionmark.folder.fill",]),
        IconCategory(categoryName: "Circles", images: ["book.circle",
                                                       "books.vertical.circle",
                                                       "books.vertical.circle.fill",
                                                       "book.circle.fill",
                                                       "book.closed.circle"]),
        IconCategory(categoryName: "Clouds", images: ["cloud.rain",
                                                      "cloud",
                                                      "cloud.drizzle.fill",
                                                      "cloud.fill",
                                                      "cloud.drizzle"])
    ]
    
    @State private var selectedCategory: IconCategory?
    @State private var selectedImage: String?
    @State private var columnVisibility = NavigationSplitViewVisibility.all

    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            // 사이드바 열 만들기
            List(categories, selection: $selectedCategory) { category in
                Text(category.categoryName).tag(category)
                
            }
            
        
        } content: {
            // 사이드 바 각각의 열 클릭하면 나오는 것
            if let selectedCategory {
                List(selectedCategory.images, id: \.self,
                     selection: $selectedImage) { image in
                    HStack {
                        Image(systemName: image)
                        Text(image)
                    }.tag(image)
                }
            } else {
                Text("Select a category")
            }
            
        } detail: {
            // content 리스트를 클릭하면 나오는 것(디테일 열에 화면 추가 -> 최종 목적지)
            if let selectedImage {
                Image(systemName: selectedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            } else {
                Text("Select an image")
            }
        } // 디테일 뷰
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    ContentView()
}

    
    

