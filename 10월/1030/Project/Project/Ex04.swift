//
//  Ex04.swift
//  Project
//
//  Created by 김수비 on 2023/10/30.
//

import SwiftUI

extension Image{
func ImageModifier() -> some View {
    
    self
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100)
        .clipShape(Circle())
}
}

struct Ex04: View {
    var body: some View {
        VStack(){
            // 짱구 1
            Image("jjanggu")
                .ImageModifier()
            
            HStack(spacing: 20){
                // 짱구 3
                Image("jjanggu")
                    .ImageModifier()
                Image("jjanggu")
                    .ImageModifier()
                Image("jjanggu")
                    .ImageModifier()
            }
            HStack(spacing: 20){
                // 짱구 3
                Image("jjanggu")
                    .ImageModifier()
                Image("jjanggu")
                    .ImageModifier()
                Image("jjanggu")
                    .ImageModifier()
            }
            Spacer()
            
            HStack(spacing: 20){
                // 버튼 3
                Button("BUTTON"){}
                    .padding(5)
                    .foregroundColor(Color.white)
                    .background(Color.indigo)
                    .cornerRadius(5)
                Spacer()
                
                Button("BUTTON"){}
                    .padding(5)
                    .foregroundColor(Color.white)
                    .background(Color.indigo)
                    .cornerRadius(5)
                Spacer()
                
                Button("BUTTON"){}
                    .padding(5)
                    .foregroundColor(Color.white)
                    .background(Color.indigo)
                    .cornerRadius(5)
            }
        }.padding()
    }
}

struct Ex04_Previews: PreviewProvider {
    static var previews: some View {
        Ex04()
    }
}
