import UIKit
/*
protocol MessageBuilder {
    var name: String {get }
    func buildMessage() -> String
}
class MyClass : MessageBuilder {
    
}


protocol 프로토콜이름 {
    // 프로토콜 정의
}

class MyClass: 프로토콜이름 {
    // 클래스 정의
}

struct MyStruct: 프로토콜이름 {
    // 구조체 정의
}

enum MyEnum: 프로토콜이름 {
    // 열거형 정의
}*/


// 프로퍼티 요구사항
protocol MyProtocol {
    var mustBeValue: Int { get set }
    var doesNotNeedToValue: Int { get }
}



struct MyStruct: MyProtocol {
    
    var mustBeValue: Int {
        get { return 0 }
        set { }
    }
    
    var doesNotNeedToValue: Int {
        get { return 0 }
    }
}

//let my = MyStruct()
//my.mustBeValue

// 메서드 요구사항
protocol MyProtocolMethod {
    func random() -> Double
}

protocol MyProtocolMethod2 {
    func randomG() -> Double
}

struct MyMethod: MyProtocolMethod, MyProtocolMethod2 {
    func random() -> Double {
        return 0.0
    }
    
    // 프로토콜에 없는 것을 선언하려면 static을 붙혀줘야함(타입 메서드)
    static func goodMethod() -> String {
        return "good"
    }
    
    // 타입 메서드
    static func randomG() -> Double {
        return 1.1
    }
}

// 타입 메서드
MyMethod.goodMethod()

// 변경 메서드 요구사항 (mutating method requirements)
protocol MyMutatingProtocol {
    
    var name: String { get set }
    mutating func updateName(name: String)
    
}

// 열거형
protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case . on:
            self = .off
        }
    }
}

var myswitch: OnOffSwitch = .on
myswitch.toggle()

// 초기화 구문 요구사항
protocol MyInitProtocol {
    init(str1: String, int1: Int)
}

class MyInitClass : MyInitProtocol {
    var str = ""
    var num = 0
    
    // required 필수 초기화
    // 모든 하위 클래스가 해당 초기화 구문을 구현해야 함을 강제
    required init(str1: String, int1: Int){
        self.str = str1
        self.num = int1
    }
}

class MyContClass : MyInitClass {
    init() {
        super.init()
    }
    
    required init(str1: String, int1: Int) {
        super.init(str: str1, init1: init1)
        
    }
    
    
}

print("Finish")

// 메서드 확장
extension Double {
    var isEven: Bool {
        return self % 2.0 == 0.0
    }
    
    var squared: Double {
        return self * self
    }
    
    var cubed: Double {
        return self * self * self
    }
}
let myValue: Double = 3.0
print ( myValue.squared)

// 연산 프로퍼티 확장
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let myNum = 2
myNum.isEven

2. isEven

// 프로토콜 + 익스텐션
protocol NoExtension {
    var test: Int { get }
    func testFunction(str: String) -> String
}

extension NoExtension {
    var test: Int {
        get {
            return 7
        }
    }
    
    func testFunction(str: String) -> String {
        return "test \(str)"
    }
}

class MyExtensionClass : NoExtension {
}

let MyExtensionClass = MyExtensionClass()
MyExtensionClass.test

