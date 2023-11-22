//
//  ContentView.swift
//  ListNaviDemo
//
//  Created by 김수비 on 2023/11/02.
//

import SwiftUI

// JSON 데이터 로딩
var CarData: [Car] = loadJson("carData.json")


// 사용자 인테페이스 콘텐트 뷰 설계
struct ContentView: View {

    @StateObject var carStore = CarStore(cars: carData)
    @State private var stackPath = NavigationPath()     // <- 내비게이션 경로 추가

    var body: some View {
        NavigationStack(path: $stackPath) {             // <- 내비게이션 경로 바인딩
            List {
                ForEach (0..<carStore.cars.count, id: \.self) { i in
                    NavigationLink(value: i) {
                        ListCell(car: carStore.cars[i])
                    }
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationDestination(for: Int.self) { i in
                CarDetail(selectedCar: carStore.cars[i])
            }
            .navigationDestination(for: String.self) { _ in
                AddNewCar(carStore: self.carStore, path: $stackPath)    // <- 추가화면에서 돌아올 수 있도록 내비게이션 경로 전달
            }
            // 제목
            .navigationTitle(Text("Ev Cars"))
            // add, edit 버튼 추가
            .toolbar {

                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    NavigationLink(value: "Add Car") {
                        Text("Add")
                    }
                }

                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    EditButton()
                }
            }
        }
    }

    // 삭제 함수
    func deleteItems(at offsets: IndexSet) {
        carStore.cars.remove(atOffsets: offsets)
    }

    func moveItems(from source: IndexSet, to destination: Int) {
        carStore.cars.move(fromOffsets: source, toOffset: destination)
    }
}

// 하위 뷰로 추출
struct ListCell: View {

    var car: Car

    var body: some View {
        HStack {
            Image(car.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 60)
            Text(car.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

