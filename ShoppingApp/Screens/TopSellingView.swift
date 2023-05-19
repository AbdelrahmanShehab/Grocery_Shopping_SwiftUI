//
//  TopSellingView.swift
//  ShoppingApp
//
//  Created by Abdelrahman Shehab on 30/04/2023.
//

import SwiftUI

struct TopSellingView: View {
    let fruitCards: [FruitModel] = fruitData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(fruitCards, id: \.id) { card in
                    NavigationLink(destination: DetailView(fruit: card.title)) {
                        FruitCardView(fruits: card)
                    }//: NAVIGATION LINK
                }//: LOOP
            }//: HSTACK
        }//: SCROLL
    }
}

struct TopSellingView_Previews: PreviewProvider {
    static var previews: some View {
        TopSellingView()
    }
}
