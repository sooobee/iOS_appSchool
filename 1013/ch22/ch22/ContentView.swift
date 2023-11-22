//
//  ContentView.swift
//  ch22
//
//  Created by 김수비 on 2023/10/13.
//

import SwiftUI

struct ContentView: View {
    @State private var wifiEnable = true
    @State private var userName = ""
    
    var body: some View {
        Text("Hello, World!")
        VStack {
            Toggle(isOn: $wifiEnable, label: {
                Text("Enable Wi-Fi")
            })
            TextField("Enter user name", text: $userName)
            Text(userName)
            Image(systemName: wifiEnable ? "wifi" : "wifi.slash")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class DemoData: ObservableObject{
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init(){ // 데이터를 초기화하기 위한 코드
        updateData()
    }
    func updateData(){ // 데이터를 최신 상태로 유지하기 위한 코드

    }
}

