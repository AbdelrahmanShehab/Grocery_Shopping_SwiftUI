//
//  ImageData.swift
//  ShoppingApp
//
//  Created by Abdelrahman Shehab on 30/04/2023.
//

import Foundation

struct FruitModel {
    var id: Int
    var title: FruitTitle
    var image: String
    var price: String
    var color: String
}

enum FruitTitle: String {
    case apple,
        apricot,
        avocado,
        banana,
        blackberry,
        cherry,
        dragonfruit,
        fig,
        grapes,
        kiwi,
        lemon,
        mango,
        muskmelon,
        orange,
        papaya,
        pear,
        pineapple,
        plum,
        raspberry,
        strawbery,
        watermelon
}
