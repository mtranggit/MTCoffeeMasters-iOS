//
//  Offer.swift
//  MTCoffeeMasters
//
//  Created by Michael Trang on 14/5/2022.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 300)
                .clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                    .padding(.bottom, 20)
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
            .frame(maxWidth: .infinity, minHeight: 150, maxHeight: 150, alignment: .center)
        }.background(Color("SurfaceBackground"))
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Offer(title: "Awesome offer", description: "Come and share the joy with us")
            .previewLayout(.fixed(width: 350, height: 500))
            .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
