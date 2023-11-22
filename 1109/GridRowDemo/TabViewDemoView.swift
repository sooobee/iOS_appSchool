//
//  TabViewDemoView.swift
//
/**
 # TabView

 사용자가 이동할 화면들을 나타내는 하위 뷰들로 구성

 뷰들 사이들 이동하는 데 사용될 탭 아이템을 가진 탭 바를 레이아웃 하단에 표시
 */

import SwiftUI

struct TabViewDemoView: View {

    @State private var selection = 3

    var body: some View {
        VStack {

            Text("\(selection)")

            // TabView 콘텐트 추가
            TabView(selection: $selection) {
                Text("First Content view")
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("Screen One")
                    }.tag(1)

                Text("Second Content view")
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("Screen Tow")
                    }.tag(2)

                Text("Third Content view")
                    .tabItem {
                        Image(systemName: "3.circle")
                        Text("Screen Three")
                    }.tag(3)
            }
            .font(.largeTitle)
            // 뷰 페이징
            // 탭 아이템 추가시 시각적 표시 제공을 위해 tabViewStyle() 수정자를 제거
            // tabItem() 수정자를 사용하여 각 콘텐트 뷰에 탭 아이템을 적용
        }
        .background(.teal)
    }
}

#Preview {
    TabViewDemoView()
}
