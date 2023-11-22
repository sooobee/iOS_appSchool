//
//  ContentView.swift
//  SettingView
//
//  Created by 김수비 on 11/8/23.
//

import SwiftUI


// OutlineGroup
// ex01. OutlineGroup을 이용하여 계층적인 데이터를 표시하려고 합니다.
// 다음 화면이 되도록 구현해보세요.

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
