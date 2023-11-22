//
//  main.swift
//  ex14
//
//  Created by 김수비 on 2023/10/17.
//

import Foundation

class Vehicle{
    var model: String
    var color: String
    
    init(model: String, color: String) {
        self.model = model
        self.color = color
    }
    
    func drive() -> String{
        "\(model) \(color) 자동차가 달립니다."
    }
}

class Car : Vehicle{
    var door: Int
    
    init(model: String, color: String, door: Int) {
        self.door = door
        super.init(model: model, color: color)
    }
    override func drive() -> String{
        return super.drive() + " \(door)개의 문을 열고 달립니다."
    }
}

class Motorcycle: Vehicle {
    var helmet : Bool
    
    init(model:String, color:String, helmet: Bool) {
        self.helmet = helmet
        super.init(model: model, color: color)
    }
    
    override func drive() -> String{
        return super.drive() + " 오토바이가 헬멧을 \(helmet ? "쓰" : "안쓰")고 달립니다."
    }
}

let car: Vehicle = Car(model: "소나타", color: "검정", door: 4)
let motorcycle: Vehicle = Motorcycle(model: "니노", color: "노랑", helmet: true)
print(car.drive()) // 소나타 검정 자동차가 4개의 문을 열고 달립니다.
print(motorcycle.drive()) // 니노 노랑 오토바이가 헬멧을 쓰고 달립니다. or // ~오토바이가 헬멧을 쓰지 않고 달립니다

