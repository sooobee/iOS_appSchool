//: [Previous](@previous)

import Foundation

/*
//ex 1. 다음 코드에서 컴파일 에러가 발생하는 이유를 설명하고, Generics을 사용하여 에러를 해결하는 방법을 제시하세요.

struct Stack<Element> {
    var items: [Element] = []
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var intStack = Stack<Int>()
intStack.push(3)
intStack.push(5)
print(intStack.pop()) // 5

var stringStack = Stack<String>()
stringStack.push("Hello")
stringStack.push("World")
print(stringStack.pop())



// ex 2. 제너릭 함수로 두 개의 값을 교환하는 swap 함수를 작성해보세요.
func swap<T>(_ a: inout T, _ b: inout T){
    let num = a
    a = b
    b = num
}

var someInt = 3
var anotherInt = 107
swap(&someInt, &anotherInt)

print(someInt, anotherInt)


// ex3. 제너릭 타입으로 스택을 구현해보세요.
// 후입선출
struct Stack<T> {
    private var items = [T]()
    
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T? {
        return items.popLast()
    }
    func peek() -> T? {
        return items.last
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
print(stack.pop())   // 3
print(stack.peek())  // 2
print(stack.isEmpty)
*/



// ex4. 제너릭 타입으로 큐를 구현해보세요.
// 큐는 enqueue, dequeue, front, isEmpty 등의 메서드를 가지고 있어야 합니다.
// 선입선출
struct Queue<T> {
    private var items = [T]()
    
    mutating func enqueue(_ item: T) {
        items.append(item) // 뒤로 들어감
    }
    mutating func dequeue() ->T? {
        return items.isEmpty ? nil : items.removeFirst()
    }
    func front() -> T? {
        return items.first
    }
    var isEmpty: Bool {
        return items.isEmpty
    }
}

var queue = Queue<String>()
queue.enqueue("A")
queue.enqueue("B")
queue.enqueue("C")
print(queue.dequeue()) // A
print(queue.front()) // B
print(queue.isEmpty) // false


// ex 5.
// 다음의 함수는 제네릭 타입 T를 인자로 받아서 T의 타입을 출력하는 함수입니다.
// 제네릭을 이용하여 함수를 완성하세요.

func printType<T>(_ something: T) -> String{
    return "The Type of \(something) is \(type(of: something))"
}

printType(3) // The type of 3 is Int
printType("Hello") // The type of Hello is String
printType(true) // The type of true is Bool


// ex 6.
// 다음의 클래스는 제네릭 타입 Key와 Value를 가지는 Node 클래스입니다.
// 제네릭을 이용하여 클래스를 완성하세요.

class Node<T> (_ key: T, _ value: T){
    
}

let node = Node(key: "name", value: "Alice")
print(node.key) // name
print(node.value) // Alice


// 7. 다음의 함수는 두 개의 제네릭 타입 두 개의 인자를 받아서 두 값이 같은지 비교하는 함수입니다.

func isEqual<T> (_ first: T, _ second: T) -> Bool {
    return first == second
}

print(isEqual(1, 1)) // true
print(isEqual("Hello", "World")) // false
print(isEqual(true, false)) // false


// 8. 다음의 함수는 제네릭 타입 T를 인자로 받아서 T의 타입이 Int인지 확인하는 함수입니다.
// 제네릭을 이용하여 함수를 완성하세요.
func is Int<T> (_ item: T) -> Bool {
    type(of: item) == Int
        
}

print(isInt(3)) // true
print(isInt("Hello")) // false
print(isInt(true)) // false



// ex 11. 배열의 모든 원소를 역순으로 출력하는 함수
func printReverse<T> (_ arr: [T]) {
    for i in stride(from: arr.count, through: Strideable, by: -1){
        print(array[i])
    }
}

let array = [1, 2, 3, 4, 5]
printReverse(array)
// 5
// 4
// 3
// 2
// 1

let array2 = ["A", "B", "C", "D"]
printReverse(array2)
// D
// C
// B
// A


// ex12.
// 예시 코드: 제너릭 타입으로 연결 리스트를 구현해보세요.
// 연결 리스트는 append, insert, remove, nodeAt 등의 메서드를 가지고 있어야 합니다.

class Node<T> {
    var value: T
    var next: Node?

    init(value: T) {
        self.value = value
    }
}

struct LinkedList<T> {
    private var head: Node<T>?
    
    func append(_ value: T) {
        let newNode = Node(value: value) // 새 값을 새로운 노드로 만들어줌
        
        // 헤드가 없는 경우 새 값을 헤드로 설정
        if head == nil {
            head = newNode
            return
        }
        
        var current = head
        
        while current?.next != nil { //current에 next가 있으면 다시 current를 설정
            current = current?.next // 가장 끝까지 도착해서 그 값을 current로 설정
        }
        current?.next = newNode
    }
    
    func insert(_ value: T, at index: Int) {
        let newNode = Node(value: value)
        
        if index == 0 {
            newNode.next = head
            head = newNode
            return
        }
        
        var current = head
        var i = 0
        var previous: Node<T>?
        
        while curren?.next
        
    }
}

var list = LinkedList<Int>()
list.append(1)
list.append(2)
list.append(3)
list.insert(4, at: 1)
list.remove(at: 2)
print(list.nodeAt(0)?.value) // 1
print(list.nodeAt(1)?.value) // 4
print(list.nodeAt(2)?.value) // 3

