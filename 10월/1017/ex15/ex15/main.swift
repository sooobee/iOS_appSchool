//
//  main.swift
//  ex15
//
//  Created by 김수비 on 2023/10/17.
//

import Foundation

class Food{
    var name : String
    var price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
    
    func order() -> String{
        "\(name) 피자를 주문했습니다. 가격은 \(price)입니다."
    }
}

class Pizza : Food {
    var topping : String
    
    init(name: String, price: Int, topping: String) {
        self.topping = topping
        super.init(name: name, price: price)
    }
    
    override func order() -> String{
        super.order() + "토핑은 \(topping)입니다."
    }
}

class Pasta : Food {
    var sauce : String
    
    init(name: String, price: Int, sauce: String) {
        self.sauce = sauce
        super.init(name: name, price: price)
    }
    
    override func order() -> String{
        super.order() + "소스는 \(sauce)입니다."
        
    }
}

let cheesePizza: Food = Pizza(name: "치즈", price: 15000, topping: "치즈")
let carbonara: Food = Pasta(name: "카르보나라", price: 12000, sauce: "크림")

print(cheesePizza.order()) // 치즈 피자에 치즈피자를 주문하였습니다. 가격은 15000원입니다.
print(carbonara.order())   // 카르보나라 파스타에 크림 소스를 선택하였습니다. 가격은 12000원입니다.

