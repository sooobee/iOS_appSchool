//
//  AddNewCar.swift
//  ListNaviDemo
//
//  Created by 김수비 on 2023/11/02.
//

import SwiftUI

struct AddNewCar: View {
    
    @StateObject var carStore : CarStore
    @State private var isHybrid = false
    @State private var name: String = ""
    @State private var description: String = ""
    @Binding var path: NavigationPath
    
    var body: some View {
        Form {
            Section {
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                DataInput(title: "Model", userInput: $name)
                DataInput(title: "Description", userInput: $description)
                
                Toggle(isOn: $isHybrid) {
                    Text("Hybrid")
                        .font(.headline)
                }
                .padding()
            }
            
            Button(action: addNewCar){
                Text("Add Car")
            }
        }
    }
    
    func addNewCar() {
        // 프로젝트 간략화를 위해 사진 라이브러리에서 사진을 가져오지 않고 기존 이미지를 재사용
        let newCar = Car(id: UUID().uuidString, name: name,
                         description: description, isHybrid: isHybrid, imageName: "tesla_model_3")
        
        carStore.cars.append(newCar)
        
        path.removeLast()
    }
}



// 새로운 차량의 상세 정보 입력을 위한 하위 뷰를 선언
struct DataInput: View {
    var title: String
    @Binding var userInput: String
    
    var body: some View {
        VStack {
            Text(title)
            TextField("Enter \(title)", text:$userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

/*
struct AddNewCar_Previews: PreviewProvider {
    static var previews: some View {
        AddNewCar(carStore: CarStore(cars: carData))
    }
}*/
