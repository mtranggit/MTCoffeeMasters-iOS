//
//  MTCoffeeMastersApp.swift
//  MTCoffeeMasters
//
//  Created by Michael Trang on 14/5/2022.
//

import SwiftUI

@main
struct MTCoffeeMastersApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
