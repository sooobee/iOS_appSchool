//
//  StorageDemoView.swift
//  DemoProject2
//
//  Created by 김수비 on 2023/10/26.
//

import SwiftUI

struct StorageDemoView: View {
    var body: some View {
        TabView {
            SceneStorageView(){
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("SceneStorage")
                }
                AppStorageView()
                    .tabItem {
                        Image(systemName: "square.fill")
                        Text("AppStorage")
                    }
            }
        }
    }
}

struct StorageDemoView_Previews: PreviewProvider {
    static var previews: some View {
        StorageDemoView()
    }
}
