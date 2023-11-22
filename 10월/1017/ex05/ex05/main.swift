//
//  main.swift
//  ex05
//
//  Created by 김수비 on 2023/10/17.
//

import Foundation

class Animal{
    var name: String
    
    init(name: String) {
        self.name = name
        print("내 이름은 \(name)")
    }
    
    func makeSound(){
        print("...")
    }
}
class Cat: Animal{
    
    override init(name: String) {
        print("내 진짜 이름은 \(name)")
        super.init(name: name) // 반드시 부모 생성자를 추가해줘야 함
    }
    
    override func makeSound(){
        print("야옹")
    }
}
class Dog: Animal{
    override func makeSound(){
        print("멍멍")
    }
}

let cat: Animal = Cat(name: "나비")
let dog: Animal = Dog(name: "바둑")
cat.makeSound() // 야옹
dog.makeSound() // 멍멍
