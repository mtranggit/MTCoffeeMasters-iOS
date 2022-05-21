//
//  MenuPage.swift
//  MTCoffeeMasters
//
//  Created by Michael Trang on 21/5/2022.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView {
            List {
//                AppTitle()
//                    .padding(.top, 4)
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                        .listRowBackground(Color("CardBackground"))
                        .foregroundColor(Color("Secondary"))
                        .padding()
                    
                    ForEach(category.products) { product in
                        NavigationLink {
                            DetailsPage(product: product)
                        } label: {
                            ProductItem(product: product)
                                .padding(.top)
                                .padding(.leading)
                                .padding(.bottom, 12)
                        }

                    }
                }
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowSeparator(.hidden)
                .listRowBackground(Color("CardBackground"))
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Products")
            .background(Color("SurfaceBackground"))
        }
    }
        
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
            .environmentObject(MenuManager())
    }
}
