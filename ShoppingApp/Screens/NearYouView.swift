//
//  NearYouView.swift
//  ShoppingApp
//
//  Created by Abdelrahman Shehab on 30/04/2023.
//

import SwiftUI

struct NearYouView: View {
    // MARK: -  PROPERTY
    let places: [PlacesModel] = placesData
    
    // MARK: -  BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(places, id: \.id) { place in
                HStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.gray.opacity(0.2))
                        .frame(width: 100, height: 100)
                        .overlay(
                            Image(place.image)
                                .resizable()
                                .scaledToFit()
                        )
                    VStack(alignment: .leading) {
                        Text("\(place.name)")
                            .font(.system(.headline))
                        Text("\(place.time)")
                            .font(.system(.subheadline))
                            .foregroundColor(.gray)
                        Text("\(place.rating)")
                    }//: VSTACK
                }//: HSTACK
            }//: LOOP
        }//: SCROLL
    }
}

// MARK: -  PREVIEW
struct NearYouView_Previews: PreviewProvider {
    static var previews: some View {
        NearYouView()
    }
}
