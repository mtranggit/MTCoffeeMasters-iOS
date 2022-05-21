//
//  ContentView.swift
//  MTCoffeeMasters
//
//  Created by Michael Trang on 14/5/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrdersPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("My Order")
                }
                .badge(cartManager.cart.count)
            InfoPage()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
        }
    }
}

//struct ContentView: View {
//    var body: some View {
//        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
//            VStack {
//                Greeting()
//                Greeting()
//                Greeting()
//            }
//        }
//    }
//}
//
//struct Greeting: View {
//    @State var name = ""
//    var body: some View {
//        VStack {
//            TextField("Enter your name", text: $name)
//                .padding()
//            Text("Hello \(name)")
//                .padding()
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewDevice("iPhone SE (2nd generation)")
        }
    }
}
