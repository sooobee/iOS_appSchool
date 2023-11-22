//
//  ContentView.swift
//  ListEx
//
//  Created by 김수비 on 2023/11/01.
//

import SwiftUI

// ex1.
/*
struct ex1: View {
    var body: some View {
        
        VStack{
            Text("SwiftUI List Quiz")
                .font(.largeTitle)
                .padding()
            
            List(1...10, id: \.self) { item in
                Text("Item \(item)")
                    .foregroundColor(.blue)
            }
            .backgroundStyle(.white)
            // List
        } // VStack
    }
}*/


// ex2.
/*
struct ToDoItem : Identifiable {
    var id = UUID()
    var task: String
}

struct ex2: View {
    var body: some View {
        VStack{
            Text("SwiftUI List Quiz")
                .font(.largeTitle)
                .padding()
            
            List() {
                ForEach(1..<6){ section in
                    let items = (1...3)
                    
                    Section {
                        ForEach(items, id: \.self){ row in
                            Text("Item \(row)")
                                .foregroundColor(.blue)
                        }
                    }
                
                    // 머리 부분에 들어감
                    header: {
                        Text("Section \(section)")
                            .foregroundColor(.black)
                    }
                    
                    // 꼬리 부분에 들어감
                    footer: {
                        HStack {
                            Spacer()
                            Text("\(items.count) 건")
                        }
                    }
                }
            }
        }
    }
}*/

// ex3.
/*
struct ex3: View {
    
    struct Item: Identifiable {
        let id = UUID()
        let image: String
        let text: String
    }
    
    let items = [
        Item(image:"applelogo", text: "Apple"),
        Item(image:"swift", text: "Swift"),
        Item(image:"xcode", text: "Xcode"),
        Item(image:"macos", text: "macOS"),
        Item(image:"ios", text: "iOS")
    ]
    
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        
        VStack{
            Text("\(multiSelection.count) selections")
                .font(.largeTitle)
                .padding()

            NavigationStack {
                List(items, selection: $multiSelection){ item in
                    HStack {
                        
                        Text("Item \(item.text)")
                    }// HStack
                }// List
                .navigationTitle("SwiftUI List Quiz")
                .toolbar {EditButton()} // 편집 버튼 // 툴바에 여러개 체크할 수 있는 게 포함돼 있는 건가?
            } //NavigationStack
            
        }
    }
}
*/

// ex4.
/*
struct ex4: View {
    // 여기에 코드를 작성하세요.
    @State private var toggleStatus: [Bool] = Array(repeating: false, count: 10)

    var body: some View {
        VStack{
            
            Text("SwiftUI List Quiz")
                .font(.largeTitle)
                .padding()
            
            List(0...9, id: \.self) { item in
                HStack {
                    Text("Item \(item)")
                        .fontWeight(toggleStatus[item] ? .bold : .regular)
                
                    
                    //토글 여러개 어떻게  for문 Text랑 연결 시키는 지 모르겟음
                    Toggle(isOn: $toggleStatus[item]){}

                } //HStack
            } //List
        } //VStack
    }
}*/

// ex5.
struct ex5: View {
    @State var items = Array(1...10)
    
    var body: some View {
        VStack{
            Text("SwiftUI List Quiz")
                .font(.largeTitle)
                .padding()
            
            List {
                ForEach(items, id: \.self) { item in
                    
                    HStack {
                        Text("Item \(item)")
                        
                        Spacer()
                        
                        Button(action: {
                            if let index = items.firstIndex(of: item){
                                items.remove(at: index)
                            }
                        }, label: {
                            Image(systemName: "trash")
                        })
                    }
                }
            }
        }
    }
}

struct ListEx_Previews: PreviewProvider {
    static var previews: some View {
        ex5()
    }
}

