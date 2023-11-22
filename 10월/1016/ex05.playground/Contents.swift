import UIKit

var greeting = "Hello, playground"

class Animal(name: String){
    var name : String
    var sound : String
    
    init(name: String){
        self.name = name
    }
    
    func makeSound(){
        "울음소리"
    }
    
}
class Cat(): Animal {
    name : String
    sound = "야옹"
    
    override func makeSound(){
        "야옹"
    }
}
class Dog(): Animal {
    name : String
    override func makeSound(){
        "멍멍"
    }
}

let cat: Animal = Cat(name: "나비")
let dog: Animal = Dog(name: "바둑")

cat.makeSound()
dog.makeSound()
