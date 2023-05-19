//
//  OnboardingScreen.swift
//  ShoppingApp
//
//  Created by Abdelrahman Shehab on 30/04/2023.
//

import SwiftUI

struct OnboardingScreen: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Spacer()
                
                Image("img")
                    .resizable()
                    .scaledToFit()
                    .padding()
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order Your Favorite Fruits")
                        .font(.system(.largeTitle))
                        .fontWeight(.black)
                        .foregroundColor(.black.opacity(0.7))
                    Text("Eat fresh fruits and try to be healty")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                }//: VSTACK
                Spacer()
                NavigationLink(destination: HomeScreenView()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack {
                                Text("Next")
                                    .font(.largeTitle)
                                .fontWeight(.bold)
                                
                                Image(systemName: "chevron.right")
                            }//: HSTACK
                                .foregroundColor(.black)
                        )
                }//: NAVIGATION LINK
                Spacer()
            }//: VSTACK
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }//: NAVIGATION
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
