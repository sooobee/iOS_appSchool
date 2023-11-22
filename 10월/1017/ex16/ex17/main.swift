//
//  main.swift
//  ex17
//
//  Created by 김수비 on 2023/10/17.

import Foundation

class Animal{
    var name : String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func cry() -> String{
        return "\(age)살의 \(name)가"
    }
}

class Cat: Animal{
    var meow: String
    
    init(name:String, age: Int, meow: String) {
        self.meow = meow
        super.init(name: name, age: age)
    }
    
    // 재사용
    override func cry() -> String {
        return super.cry() + " \(meow)라고 울어요"
    }
}

class Dog: Animal{
    var bark: String
    
    init(name:String, age: Int, bark: String) {
        self.bark = bark
        super.init(name: name, age: age)
    }
    // 재사용
    override func cry() -> String {
        return super.cry() + " \(bark)라고 울어요"
    }
}
class Duck: Animal{
    var bark: String
    
    init(name:String, age: Int, bark: String ) {
        self.bark = bark
        super.init(name: name, age: age)
    }
    override func cry() -> String {
        return super.cry() + " \(bark)라고 울어요"
    }
}

let kitty = Cat(name: "나비", age: 3, meow: "야옹")
let puppy = Dog(name: "초코", age: 2, bark: "멍멍")
let duck = Duck(name: "멋쟁", age: 2, bark: "꽥꽥")

let animals: [Animal] = [kitty, puppy, duck]
print(animals[0].cry())    // 나비이(가) 야옹라고 울어요.
print(animals[1].cry())    // 초코이(가) 멍멍라고 짖어요.
print(animals[2].cry())  // 멋쟁이(가) 꽥꽥라고 짖어요.

for ani in animals{ print(ani.cry())}
