//
//  FruitCardView.swift
//  ShoppingApp
//
//  Created by Abdelrahman Shehab on 30/04/2023.
//

import SwiftUI

let fruitCards: FruitModel = FruitModel(id: 1, title: .apple, image: "apple", price: "3.44$", color: "1")

struct FruitCardView: View {
    let fruits: FruitModel
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }//: VSTACK
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            
            ZStack {
                Image(fruits.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 110)
                
            }//: ZSTACK
            .offset(y: 50)
        }//: ZSTACK
        .frame(width: 175, height: 250, alignment: .center)
        .shadow(color: .gray, radius: 5, x: 3, y: 3)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruits: fruitCards)
    }
}
