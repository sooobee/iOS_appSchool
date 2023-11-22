//
//  main.swift
//  ex07
//
//  Created by 김수비 on 2023/10/17.
//

import Foundation

class Figure {
    var color : String
    
    init(color: String) {
        self.color = color
    }
    func area() -> Double {
        return 0.0
    }
}

class Triangle : Figure {
    var height : Double
    var base : Double
    
    init(color: String, height: Double, base: Double) {
        self.height = height
        self.base = base
        super.init(color: color)
    }
    
    override func area() -> Double {
        height * base / 2
    }
}

class Rectangle : Figure {
    var width : Double
    var length : Double
    
    init(color: String, width: Double, length: Double) {
        self.width = width
        self.length = length
        
        super.init(color: color)
    }
    
    override func area() -> Double {
        width * length
    }
}


let triangle = Triangle(color: "red", height: 4, base: 3)
let rectangle = Rectangle(color: "blue", width: 5, length: 6)
print(triangle.area()) // 6.0
print(rectangle.area()) // 30.0


