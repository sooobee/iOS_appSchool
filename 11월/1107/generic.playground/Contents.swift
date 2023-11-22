import UIKit


// T에 값(double, int 등)이 들어오면 그 값이 전부 T자리에 적용됨
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107

swapTwoValues(&someInt, &anotherInt)
print( someInt, anotherInt )


struct Stack<Element> {
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var myStack: Stack<String> = Stack<String>() // String 넣는 걸로 바뀜
myStack.push("Park")
myStack.push("Kim")
myStack.push("Lee")
myStack.items
myStack.pop()

var anyStack = Stack<Any>()
anyStack.push("S")
anyStack.push(1)

// 제너릭 확장(익스텐션)
extension Stack {
    var topElement: Element? {
        return self.items.last
    }
}
myStack.topElement


//

