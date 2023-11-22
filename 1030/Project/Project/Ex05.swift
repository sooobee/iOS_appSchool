//
//  Ex05.swift
//  Project
//
//  Created by 김수비 on 2023/10/30.
//

import SwiftUI

struct Ex05: View {
    @State private var icup = "up"
    @State private var icdown = "down"
    
    var body: some View {
        VStack{
            // 이미지
            Image(icup)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
            
            Spacer()
            
            HStack{
                // 버튼 2
                Button("up"){
                    // down 이미지 일때 위치 바꾸기
                    if icup.hasSuffix("down"){
                        (icup, icdown) = (icdown, icup)
                    }
                    
                }
                    .padding(5)
                    .background(Color.indigo)
                    .foregroundColor(Color.white)
                    .cornerRadius(5)

                Button("down"){
                    // up 이미지 일때 위치 바꾸기
                    if icdown.hasSuffix("down"){
                        (icdown, icup) = (icup, icdown)
                    }
                    
                }
                    .padding(5)
                    .background(Color.indigo)
                    .foregroundColor(Color.white)
                    .cornerRadius(5)
            }
            Spacer()
            
            // 이미지
            Image(icdown)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)

                
        }.padding(10)
    }
}

struct Ex05_Previews: PreviewProvider {
    static var previews: some View {
        Ex05()
    }
}
