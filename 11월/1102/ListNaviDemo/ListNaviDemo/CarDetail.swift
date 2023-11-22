//
//  CarDetail.swift
//  ListNaviDemo
//
//  Created by 김수비 on 2023/11/02.
//

import SwiftUI

// 상세뷰 설정하기
// 각 자동차 클릭했을 때 뜨는 창 
struct CarDetail: View {

    let selectedCar: Car

    var body: some View {
        Form {
            Section {
                Image(selectedCar.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()

                Text(selectedCar.name)
                    .font(.headline)

                Text(selectedCar.description)
                    .font(.body)

                HStack {
                    Text("Hybrid").font(.headline)
                    Spacer()
                    Image(systemName: selectedCar.isHybrid ?  "checkmark.circle" : "xmark.circle")
                }
            } header: {
                Text("Car Details")
            }

        }
    }
}

struct CarDetail_Previews: PreviewProvider {
    static var previews: some View {
        CarDetail(selectedCar: carData[0])
        
    }
}
