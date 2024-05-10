//
//  PlaceModel.swift
//  Mobi
//
//  Created by 김인영 on 5/10/24.
//

import UIKit

struct PlaceModel {
    let image: UIImage
    let name: String
    let meter: String
    let roadTraffic: String
    let population: String
    
    init(image: UIImage, name: String, meter: String, roadTraffic: String, population: String) {
        self.image = image
        self.name = name
        self.meter = meter
        self.roadTraffic = roadTraffic
        self.population = population
    }
}

let testDummy: [PlaceModel] = [
    PlaceModel(image: .hongdae, name: "홍대", meter: "65m", roadTraffic: "도로교통 서행", population: "붐빔"),
    PlaceModel(image: .hongdae, name: "이태원", meter: "65m", roadTraffic: "도로교통 서행", population: "보통"),
    PlaceModel(image: .hongdae, name: "홍대", meter: "65m", roadTraffic: "도로교통 서행", population: "여유"),
    PlaceModel(image: .hongdae, name: "이태원", meter: "65m", roadTraffic: "도로교통 서행", population: "붐빔"),
    PlaceModel(image: .hongdae, name: "상수", meter: "65m", roadTraffic: "도로교통 서행", population: "보통"),
    PlaceModel(image: .hongdae, name: "홍대", meter: "65m", roadTraffic: "도로교통 서행", population: "붐빔"),
    PlaceModel(image: .hongdae, name: "이태원", meter: "65m", roadTraffic: "도로교통 서행", population: "여유"),
    PlaceModel(image: .hongdae, name: "홍대", meter: "65m", roadTraffic: "도로교통 서행", population: "붐빔"),
    PlaceModel(image: .hongdae, name: "이태원", meter: "65m", roadTraffic: "도로교통 서행", population: "붐빔"),
    PlaceModel(image: .hongdae, name: "상수", meter: "65m", roadTraffic: "도로교통 서행", population: "붐빔"),
    PlaceModel(image: .hongdae, name: "홍대", meter: "65m", roadTraffic: "도로교통 서행", population: "약간붐빔"),
    PlaceModel(image: .hongdae, name: "이태원", meter: "65m", roadTraffic: "도로교통 서행", population: "붐빔"),
    PlaceModel(image: .hongdae, name: "홍대", meter: "65m", roadTraffic: "도로교통 서행", population: "보통"),
    PlaceModel(image: .hongdae, name: "이태원", meter: "65m", roadTraffic: "도로교통 서행", population: "붐빔"),
    PlaceModel(image: .hongdae, name: "상수", meter: "65m", roadTraffic: "도로교통 서행", population: "붐빔")
]
