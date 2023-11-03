//
//  Card.swift
//  AdbSalamPortfolio
//
//  Created by Muhammad Abdulsalam on 27/10/2023.
//

import Foundation
import SwiftUI

func Card(image: String, title: String, body: String) -> some View {
    return VStack{
        Image(image)
            .resizable()
            .frame(width: 160, height: 160)
            .scaledToFit()
        
        Spacer().frame(height: 10)
        
        Text(title)
            .font(.system(size: 14))
            .fontWeight(.bold)
            .padding(.horizontal, 6)
            .frame(maxWidth: .infinity, alignment: .leading)
        Spacer().frame(height: 6)
        
        Text(body)
            .font(.system(size: 12))
            .frame(maxWidth: .infinity, alignment: .leading)
            .truncationMode(.tail)
            .padding(.horizontal, 8)
            .padding(.vertical, 6)
        
    }
    .frame(
        width: 160,
        height: 240,
        alignment: .top)
    .background(Color("Background"))
    .clipShape(
        .rect(
            topLeadingRadius: 20,
            bottomLeadingRadius: 20,
            bottomTrailingRadius: 20,
            topTrailingRadius: 20
        )
    )
}


#Preview{
    Card(
        image: "PlaceHolderCard",
        title: "Sample Card title",
        body: "This is some dummy body of the card so heres some more info to check for truncation aswell"
    )
}
