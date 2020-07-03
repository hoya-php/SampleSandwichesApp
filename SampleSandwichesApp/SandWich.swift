//
//  SandWich.swift
//  SampleSandwichesApp
//
//  Created by 伊藤和也 on 2020/06/30.
//

import Foundation

struct Sandwich: Identifiable {
    var id = UUID()
    var name: String
    var ingredientCount: Int
    var isSpaicy: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
    
}

let testData = [
    Sandwich(name: "1114_Fotor_01", ingredientCount: 4, isSpaicy: false),
    Sandwich(name: "1114_Fotor_02", ingredientCount: 4, isSpaicy: true),
    Sandwich(name: "1114_Fotor_03", ingredientCount: 3, isSpaicy: false),
    Sandwich(name: "1114_Fotor_04", ingredientCount: 5, isSpaicy: true),
    Sandwich(name: "1114_Fotor_05", ingredientCount: 2, isSpaicy: false),
    Sandwich(name: "1114_Fotor_06", ingredientCount: 4, isSpaicy: false),
    Sandwich(name: "1114_Fotor_07", ingredientCount: 2, isSpaicy: true),
    Sandwich(name: "1114_Fotor_08", ingredientCount: 2, isSpaicy: false),
    Sandwich(name: "1114_Fotor_09", ingredientCount: 3, isSpaicy: true),
    Sandwich(name: "1114_Fotor_10", ingredientCount: 4, isSpaicy: true),
]
