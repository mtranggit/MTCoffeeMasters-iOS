//
//  Category.swift
//  MTCoffeeMasters
//
//  Created by Michael Trang on 21/5/2022.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
