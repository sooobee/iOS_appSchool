import UIKit

var greeting = "Hello, playground"
/*
// ex 1. 다음 프로토콜을 채택하는 Person 구조체를 정의하고, 프로토콜의 메서드를 구현하세요.
protocol Greeting {
    var name: String { get }
    func sayHello()
}

struct Person: Greeting {
    var name: String
    
    func sayHello() {
        print("Hello, \(name)!")
    }
}

let person = Person(name: "park")
person.sayHello()     // Hello, park!



// ex 2. 다음 프로토콜을 채택하는 Circle 클래스를 정의하고, 프로토콜의 연산 프로퍼티를 구현하세요.
protocol Shape {
    var area: Double{ get }
}

class Circle: Shape {
    var radius : Double
    
    
    // class이므로 init 해줘야함
    init(radius: Double){
        self.radius = radius
    }
    
    var area: Double {
        get {
            return .pi * radius * radius
        }
    }
}

let circle = Circle(radius: 3.0)
circle.area


// ex 3. 다음 프로토콜을 채택하는 Car 구조체를 정의하고, 프로토콜의 타입 메서드를 구현하세요.
protocol Vehicle {
    static func makeNoise()
}

struct Car : Vehicle {
    static func makeNoise() {
        print("붕붕")
    }
}

Car.makeNoise()

// 4. 다음 프로토콜을 채택하는 Counter 클래스를 정의하고, 프로토콜의 타입 연산 프로퍼티를 구현하세요.
protocol Countable {
    static var count: Int { get set } // 타입 연산 프로퍼티
}

class Counter: Countable {
    static var count: Int = 0
}

Counter.count


// 5. Equatable 프로토콜을 채택한 Student 구조체를 정의하고, 두 Student 인스턴스가 같은지 비교하는 == 연산자를 구현해보세요.
struct Student: Equatable {
    var name: String
    var age: Int
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

let alice = Student(name: "Alice", age: 20)
let bob = Student(name: "Bob", age: 21)

print(alice == bob) // false


// 6. 다음 코드에서 Person 클래스를 프로토콜로 변환하고, Student 클래스가 이 프로토콜을 준수하도록 수정해보세요.
protocol Person {
    var name: String { get set }
    var age: Int { get set }
    
    func introduce()
}

class Student: Person {
    var name: String
    var age: Int
    var school: String
    
    init(name: String, age: Int, school: String) {
        self.name = name
        self.age = age
        self.school = school
    }
    
   func introduce() {
        print("My name is \(name) and I'm \(age) years old.")
        print("I go to \(school).")
    }
}


// 7. 프로토콜을 채택하고 준수하는 클래스를 정의하고, 해당 클래스의 인스턴스를 생성하고 프로토콜의 메서드를 호출하는 코드를 작성해보세요.
// 프로토콜의 이름은 Speaker이고, 인사말을 출력하는 메서드 speak(message: String)을 가지고 있습니다.
protocol Greeter {
    func greet(name: String)
}

protocol Speaker {
    func speak(message: String)
}

class Person: Greeter, Speaker {
    func greet(name: String) {
        print("Hello, \(name)!")
    }
    func speak(message: String) {
        print("\(message)")
    }
}

let person = Person()
person.greet(name: "Kim")
person.speak(message: "안녕하세요")



// 8. 프로토콜을 상속받는 서브 프로토콜을 정의하고, 해당 프로토콜을 채택하고 준수하는 구조체를 정의하세요.
protocol Animal {
    var name: String { get }
    func makeSound()
}



struct Dog: Animal{
    var name: String
    
    func makeSound() {
        print("Woof!")
    }
}

let bob = Dog(name: "Bob", owner: "Charlie")
bob.makeSound()     // Woof!

// 서브 스크립트
struct MySubScripts {
    var name: String = ""
    
    subscript(str: String) -> String {
        return name + str
    }
}

let mysc = MySubscripts(name: "Park")
mysc["Hello"]
mysc[1]



// 11. Protocol 을 채택한 클래스, 구조체, 열거형에 공통된 기능을 추가하고 싶을 때, 어떤 방법을 사용해야 할까요?
protocol Animal {
    var name: String { get }
    func makeSound()
}

class Dog: Animal {
    var name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        print("Woof!")
    }
}

// 구조체 이므로 init은 없음
struct Cat: Animal {
    var name: String

    func makeSound() {
        print("Meow!")
    }
}

enum Bird: Animal {
    case parrot(String)
    case sparrow(String)

    var name: String {
        switch self {
        case .parrot(let name):
            return name
        case .sparrow(let name):
            return name
        }
    }

    func makeSound() {
        switch self {
        case .parrot:
            print("Hello!")
        case .sparrow:
            print("Chirp!")
        }
    }
}

 

// 추가 코드
//...
extension Animal {
    func introduce() {
        print("My name is \(name).")
    }
}


let dog = Dog(name: "Max")
let cat = Cat(name: "Lily")
let bird = Bird.parrot("Jack")

dog.introduce()     // My name is Max.
cat.introduce()     // My name is Lily.
bird.introduce()    // My name is Jack.




*/
// 12. 다음 프로토콜을 채택하는 구조체를 정의하고, 프로토콜의 익스텐션으로 메서드를 추가하세요.
protocol Flyable {
    var speed: Double { get set }
}

struct Bird : Flyable {
    var speed: Double
}

// 프로토콜 확장
extension Flyable {
    func fly(){
        print("날아올라 \(speed)KM/h 로!")
    }
}


let bard = Bird(speed: 30)
bard.fly()




// 13. 다음 프로토콜을 채택하는 구조체를 정의하고, 프로토콜의 익스텐션으로 연산 프로퍼티를 추가하세요.
protocol Colorful {
    var color: String { get set }
}

struct Flower : Colorful {
    var color: String
}

extension Colorful {
    
    // 변수로 만들었을 땐 get, set으로 넘겨줄 수 있음
    var description: String {
        get {
            return " A \(color) Thing"
        }
    }
}

let flower = Flower(color: "Yellow")
print( flower.description )     // A Yellow thing



//14. 다음 프로토콜을 채택하는 클래스를 정의하고, 프로토콜의 익스텐션으로 서브스크립트를 추가하세요.
protocol Stackable {
    var items: [Int] { get set }
}

class Stack: Stackable {
    var items: [Int]
    
    init(items: [Int]){
        self.items = items
    }
}

extension Stackable {
    subscript(index: Int) -> Int{
        return items[index]
    }
}


let stack = Stack(items: [5,4,7,3,1])
print( stack[0] )


