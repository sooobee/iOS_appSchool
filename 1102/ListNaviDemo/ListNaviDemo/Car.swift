//
//  Car.swift
//  ListNaviDemo
//
//  Created by 김수비 on 2023/11/02.
//

import Foundation

struct Car : Codable, Identifiable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}
