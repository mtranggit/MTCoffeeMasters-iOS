//
//  AppTitle.swift
//  MTCoffeeMasters
//
//  Created by Michael Trang on 21/5/2022.
//

import SwiftUI

struct AppTitle: View {
    var body: some View {
        HStack {
            Spacer()
            Image("LogoCM")
            Spacer()
        }
        .padding(4)
        .listRowBackground(Color("Secondary"))
        .background(Color("Secondary"))
    }
}

struct AppTitle_Previews: PreviewProvider {
    static var previews: some View {
        AppTitle()
    }
}
