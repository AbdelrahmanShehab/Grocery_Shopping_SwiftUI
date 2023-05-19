//
//  RoundedCornerShape.swift
//  ShoppingApp
//
//  Created by Abdelrahman Shehab on 30/04/2023.
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let corner: UIRectCorner
    let reduis: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: reduis, height: reduis))
        
        return Path(path.cgPath)
    }
}
