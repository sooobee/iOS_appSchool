//
//  main.swift
//  Protocol
//
//  Created by 김수비 on 2023/10/16.
//

import Foundation

protocol MessageBuilder {
    var name: String
    
    func buildMessage() -> String
}

class MyClass: MessageBuilder {
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func buildMessage() -> String {
        return "Hello " + name
    }
}

// p. 97
func doubleFunc(value: Int) -> some Equatable {
    return value * 2
}

doubleFunc(value: 4)


