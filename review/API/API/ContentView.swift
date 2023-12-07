//
//  ContentView.swift
//  API
//
//  Created by 김수비 on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    
    // newAPI 불러옴
    @StateObject var network = NewsAPI.shared
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(network.posts, id: \.self) { result in
                    HStack {
                        // 사진
                        AsyncImage(url: URL(string: result.urlToImage ?? "")){ image in
                            image.image?.resizable()
                        }
                        .frame(width: 120, height: 80)
                        
                        // 타이틀
                        Text(result.title)
                            .bold()
                    }
                    .padding(5)
                }
            }
            .navigationTitle("News")
        }
        .onAppear() {
            network.feachData()
        }
    }
}


#Preview {
    ContentView()
}
