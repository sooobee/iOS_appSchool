//
//  main.swift
//  person
//
//  Created by 김수비 on 2023/10/17.
//

import Foundation

class Person{
    var name = ""
    var age = -1
    
    init(name: String = "", age: Int = 1) {
        self.name = name
        self.age = age
    }
    
    func introduce() -> String{
        "저는 \(name)이고, \(age)살 입니다."
    }
}

class Student : Person {
    var grade : Int
    var classNumber : Int
    
    init(name:String, age: Int, grade: Int, classNumber: Int){
        self.grade = grade
        self.classNumber = classNumber
        super.init(name: name, age: age)
    }
    
    override func introduce() -> String {
        super.introduce() + " 저는 \(grade)학년 \(classNumber)반 입니다."
    }
}

class Teacher: Person {
    var subject = ""
    
    init(name:String, age:Int, subject: String){
        self.subject = subject
        super.init(name:name, age: age)
    }
    override func introduce() -> String {
        super.introduce() + " 저는 \(subject) 선생님입니다."
    }
}

let student: Person = Student(name: "민수", age: 15, grade: 2, classNumber: 3)
let teacher: Person = Teacher(name: "영희", age: 25, subject: "수학")
print(student.introduce())// 저는 민수이고, 15살입니다. 저는 2학년 3반입니다.
print(teacher.introduce()) // 저는 영희이고, 25살입니다. 저는 수학 선생님입니다.
