//
//  DetailView.swift
//  ShoppingApp
//
//  Created by Abdelrahman Shehab on 30/04/2023.
//

import SwiftUI

struct DetailView: View {
    // MARK: -  PROPERTY
    @State var fruit: FruitTitle
        
    // MARK: -  BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Image("bg")
                .resizable()
                .clipShape(RoundedCornerShape.init(corner: [.bottomLeft, .bottomRight], reduis: 50))
                .edgesIgnoringSafeArea(.top)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Image("\(fruit.rawValue)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250, alignment: .center)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                        .offset(y: 25)
                )
            Spacer()
            Text("\(fruit.rawValue) - Medium".uppercased())
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal, 5)
            
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Delivery Time")
                    Text("25- 30 Min")
                }//: VSTACK
            }//: HSTACK
            .padding(.horizontal)
            
            HStack {
                Text("$ 1.99")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                Counter()
            }//: HSTACK
            
            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment: .center)
                .cornerRadius(15)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Text("Add to Cart")
                        .font(.system(.title3))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                )
                .padding(.horizontal)
        }//: VSTACK
    }
}

// MARK: -  COUNTER BUTTON
struct Counter: View {
    @State var count = 0
    var body: some View {
        HStack(spacing: 25) {
            Button {
                count += 1
            } label: {
                Image(systemName: "plus")
            }//: PLUS BUTTON "+"
            Text("\(count)")
                .font(.title)
            Button {
                if count != 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
            }//: MINUS BUTTON "-"

        }//: HSTACK
        .foregroundColor(.black)
        .frame(width: 130, height: 50)
        .background(Color("bgColor").opacity(0.2))
        .cornerRadius(12)
        .padding()
    }
}

// MARK: -  PREVIEW
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(fruit: .apple)
    }
}
