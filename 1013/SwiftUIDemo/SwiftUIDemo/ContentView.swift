//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 김수비 on 2023/10/15.
//

// 1. slider 추가하기
// 2. 색상 피커 추가하기
// 3. 레이아웃 정리

import SwiftUI

struct ContentView: View {
    // 글자 색상 변경을 위한 컬러 객체와 색상 이름 배열
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "Blue"]
    @State private var colorIndex = 0
    // 회전 값을 저장하게 될 상태 프로퍼티
    @State private var rotation: Double = 0
    // 사용자가 입력하는 텍스트가 저장될 상태 프로퍼티
    @State private var text: String = "Welcome to SwiftUI!"
    
    var body: some View {
        VStack {
            Spacer()
            Text("Hello, World")
                .font(.largeTitle) // 폰트 크게
                .fontWeight(.heavy) // 폰트 굵게
                .rotationEffect(.degrees(rotation)) // 회전효과
                .animation(.easeInOut(duration: 2), value: rotation) // 에니매이션
                .foregroundColor(colors[colorIndex]) // 색 변화
            Spacer()
            Divider() // 분리 라인 추가
            
            // 슬라이더 뷰
            Slider(value: $rotation, in: 0...360, step: 0.1)
            
            // 텍스트 필드 추가 및 사용자가 입력하는 텍스트 값 바인딩
            TextField("Enter text hear", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        
            
            // 색상 고름
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach(0 ..< colornames.count, id: \.self){ color in Text(colornames[color])
                        .foregroundColor(colors[color])
                }
            }.pickerStyle(.wheel)
        }
        .padding()
        .background(Color.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
