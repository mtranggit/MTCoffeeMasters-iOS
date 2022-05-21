//
//  MenuManager.swift
//  MTCoffeeMasters
//
//  Created by Michael Trang on 21/5/2022.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
    @Published var menu: [Category] = []
    
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork() {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
            .responseDecodable(of: [Category].self) { response in
                if let menuFromNetwork = response.value {
//                    print(response.value)
                    self.menu = menuFromNetwork
                }
            }
    }
}
