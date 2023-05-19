//
//  HomeScreenView.swift
//  ShoppingApp
//
//  Created by Abdelrahman Shehab on 30/04/2023.
//

import SwiftUI

// MARK: -  BODY
struct HomeScreenView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: "line.3.horizontal")
                    Spacer()
                    Image(systemName: "cart.badge.plus")
                    
                }//: HSTACK
                .font(.system(.title3))
                
                Text("Hey")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Find your frash fruits that you want")
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.3))
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                            Text("Search your fresh fruits")
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }//: HSTACK
                            .padding()
                    )
                    .frame(width: 350, height: 50, alignment: .center)
                
                // MARK: -  TOP SELLING VIEW
                Text("Top Selling")
                    .font(.title)
                    .fontWeight(.bold)
                TopSellingView()
                
                // MARK: -  NEAR YOU VIEW
                Text("Top Selling")
                    .font(.title)
                    .fontWeight(.bold)
                NearYouView()
            }//: VSTACK
            .padding()
        }//: ZSTACK
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

// MARK: -  PREVIEW
struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
