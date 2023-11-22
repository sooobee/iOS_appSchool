//
//  ContentView.swift
//  OutlineGroupDemoView
//
//  Created by 김수비 on 11/8/23.
//

import SwiftUI

struct CarInfo: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var children: [CarInfo]?
}

let carItems: [CarInfo] = [
    
    CarInfo(name: "Hybrid Cars", image: "leaf.fill", children: [
        CarInfo(name: "Toyota", image: "car.circle", children : [
            CarInfo(name: "Prius", image: "leaf.fill"),
            CarInfo(name: "Highlander Hybrid", image: "leaf.fill"),
            CarInfo(name: "Lexus", image: "car.circle", children: [
                CarInfo(name: "Lexus RX", image: "leaf.fill"),
                CarInfo(name: "Lexus NX", image: "leaf.fill")])
        ]),
        CarInfo(name: "Ford", image: "car.circle", children : [
            CarInfo(name: "Fusion Energi", image: "leaf.fill"),
            CarInfo(name: "Escape", image: "leaf.fill"),
            CarInfo(name: "Volvo", image: "car.circle", children: [
                CarInfo(name: "S90 Hybrid", image: "leaf.fill"),
                CarInfo(name: "XC90 Hybrid", image: "leaf.fill")])
        ]),
    ]),
    
    CarInfo(name: "Electric Cars", image: "bolt.car.fill", children: [
        CarInfo(name: "Tesla", image: "car.circle", children : [
            CarInfo(name: "Model 3", image: "bolt.car.fill")
        ]),
        CarInfo(name: "Karma", image: "car.circle", children : [
            CarInfo(name: "Revero GT", image: "bolt.car.fill")
        ])
    ])
]

struct ContentView: View {
    var body: some View {
        List{
            ForEach(carItems) { carItem in
                Section(header: Text(carItem.name)) {
                    
                    // 크게 섹션 나누는 역할
                    OutlineGroup(carItem.children ?? [CarInfo](), children: \.children) { child in
                        CellView(item: child)
                    }
                }
            } // List
            .listStyle(.grouped())
        }
    }
}

// 각 목록 칸에 표시할 커스텀 뷰를 추가
struct CellView: View {
    
    var item: CarInfo
    
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundStyle(.green)
            
            Text(item.name)
                .font(.system(.title3, design: .rounded))
                .bold()
        }
    }
}


#Preview {
    ContentView()
}
