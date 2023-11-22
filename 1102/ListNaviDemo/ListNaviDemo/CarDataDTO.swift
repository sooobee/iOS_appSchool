//
//  CarDataDTO.swift
//  ListNavDemo
//
//  Created by 김태훈 on 11/2/23.
//

import Foundation
import SwiftUI
struct CarData :Identifiable, Hashable {
  let id: String
  let name: String
  let description: String
  let isHybrid: Bool
  let carType: carType?
  let imageName: UIImage
}
struct CarDataDTO : Codable, Identifiable, Hashable {
  let id: String
  let name: String
  let description: String
  let isHybrid: Bool
  let imageName: String
}
class CarStore: ObservableObject {
  @Published var car: [CarData]
  init(car: [CarData]) {
    self.car = car
    self.fetchData()
  }
  func fetchData() {
    let dto: [CarDataDTO] = loadJson("carData.json")
    car = dto.map{ dto in
      CarData(id: dto.id,
              name: dto.name,
              description: dto.description,
              isHybrid: dto.isHybrid,
              carType: nameToType(name: dto.name),
              imageName: .init(named: dto.imageName) ?? .emptyImg)
    }
  }
  private func nameToType(name: String) -> carType?
  {
    if name.contains(carType.tesla.rawValue) {
      return .tesla
    } else if name.contains(carType.nissan.rawValue) {
      return .nissan
    } else if name.contains(carType.toyota.rawValue) {
      return .toyota
    } else if name.contains(carType.chevrolet.rawValue) {
      return .chevrolet
    }
    return nil
  }
  func filterHybrid(by: Bool) -> [CarData] {
    car.filter{!by || $0.isHybrid}
  }
  func filterCarType(by: carType?) -> [CarData] {
    car.filter{by == nil || $0.name.contains(by!.rawValue)}
  }
  func delete(atOffsets: IndexSet) {
    car.remove(atOffsets: atOffsets)
  }
  func move(fromOffsets: IndexSet, toOffset: Int) {
    car.move(fromOffsets: fromOffsets, toOffset: toOffset)
  }
}
enum carType: String {
  case tesla = "Tesla"
  case nissan = "Nissan"
  case toyota = "Toyota"
  case chevrolet = "Chevrolet"
}
