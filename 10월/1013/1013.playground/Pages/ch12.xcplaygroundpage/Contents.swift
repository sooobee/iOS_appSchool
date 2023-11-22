import Foundation

protocol MessageBuilder {
    var name : String {get}
    func buildMesssage() -> String
}

// 상속
class MyClass: MessageBuilder {
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func buildMesssage() -> String{
        return  "hello" + name
    }
}

// 구조체
struct SampleStruct {
    var name : String
    
    init(name: String){
        self.name = name
    }
    
    func buildHelloMsg() {
        "hello" + name
    }
}

let myStruct1 = SampleStruct(name: "Mark")
print(myStruct1.name)

var myStruct2 = myStruct1
myStruct2.name = "David"

print(myStruct1.name)
print(myStruct2.name)


class SampleClass {
    var name : String
    
    init(name: String){
        self.name = name
    }
    
    func buildHelloMsg() {
        "hello" + name
    }
}
let myClass1 = SampleClass(name: "Mark")
print(myStruct1.name)

var myClass2 = myClass1
myClass2.name = "David"

print(myClass1.name)
print(myClass2.name)
