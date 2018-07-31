//
//  Categories.swift
//  JardamBeremApp
//
//  Created by Baha Ganyev on 31.07.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class CategoryResult: Decodable {
    var results: [Result] = []
}

class Result: Decodable {
    var id: Int?
    var category_name: String?
}
