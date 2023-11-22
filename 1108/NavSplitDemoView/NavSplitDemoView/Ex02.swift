//
//  Ex02.swift
//  NavSplitDemoView
//
//  Created by 김수비 on 11/8/23.
//

import SwiftUI

struct Item: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var content: String
}

struct ListView: View {
    var items: [Item]
    @Binding var selection: Item?
    
    var body: some View {
        
        List(items, id: \.self, selection: $selection){ item in
            Text(item.title)
        }
    }
}

struct DetailView: View {
    var item: Item
    
    var body: some View {
        VStack {
            Text(item.title)
                .font(.largeTitle)
            Text(item.content)
                .padding()
        }
    }
}

struct Ex02: View {
    // 샘플 데이터
    let items = [
        Item(title: "첫 번째 항목", content: "이것은 첫 번째 항목입니다."),
        Item(title: "두 번째 항목", content: "이것은 두 번째 항목입니다."),
        Item(title: "세 번째 항목", content: "이것은 세 번째 항목입니다."),
        Item(title: "네 번째 항목", content: "이것은 네 번째 항목입니다."),
        Item(title: "다섯 번째 항목", content: "이것은 다섯 번째 항목입니다."),
        Item(title: "여섯 번째 항목", content: "이것은 여섯 번째 항목입니다."),
        Item(title: "일곱 번째 항목", content: "이것은 일곱 번째 항목입니다."),
        Item(title: "여덟 번째 항목", content: "이것은 여덟 번째 항목입니다."),
        Item(title: "아홉 번째 항목", content: "이것은 아홉 번째 항목입니다."),
        Item(title: "열 번째 항목", content: "이것은 열 번째 항목입니다.")
    ]
    
    @State private var selectedItem: Item?
    
    var body: some View {
        NavigationSplitView {
            ListView(items: items, selection: $selectedItem)
        } detail: {
            
            if let selectedItem {
                DetailView(item: selectedItem)
            }
            
            else {
                Text("항목을 선택해주세요. ")
            }
        }.navigationSplitViewStyle(.balanced)
    }
}


#Preview {
    Ex02()
}


