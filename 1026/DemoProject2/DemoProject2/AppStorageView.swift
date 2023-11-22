//
//  AppStorageView.swift
//  DemoProject2
//
//  Created by 김수비 on 2023/10/26.
//

import SwiftUI

struct AppStorageView: View {
    
    @SceneStorage("mytext") private var editorText: String = ""
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
