//
//  main.swift
//  0927
//
//  Created by 김수비 on 2023/09/27.
//

import Foundation

// 1
// var array = [Int]{repeating: "No name", count: 10}

//2
var array: [Int] = []
array.append(Int.random(in: 0...10))

array.forEach(<#T##body: (Int) throws -> Void##(Int) throws -> Void#>){
    print("array에 들어있는 짝수는 [")
    
}
print("] 입니다.")

