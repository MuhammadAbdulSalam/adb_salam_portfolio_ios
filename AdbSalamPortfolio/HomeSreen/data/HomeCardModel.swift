//
//  HomeCardModel.swift
//  AdbSalamPortfolio
//
//  Created by Muhammad Abdulsalam on 03/11/2023.
//

import Foundation


enum HomeCardType {
    case image, lotti, singleLottie
}

struct HomeCardModel: Identifiable{
    let id = UUID()
    let image: String
    let type: HomeCardType
    let tags: [String]
    let title: String
    let body: String
    let deepLink: String
}

let homeCardMock = [
    homeLottiMock(image: "ic_loading_clock"),
    homeLottiMock(image: "ic_loading_clock"),
    homeImageMock(image: "ic_snapit"),
    homeLottiMock(image: "ic_loading_clock"),
    homeImageMock(image: "ic_youtube_channel"),
]


func homeLottiMock(
    image: String = "ic_reviews"
) -> HomeCardModel{
   return HomeCardModel(
        image: image,
        type: HomeCardType.lotti,
        tags: ["Android", "Compose", "Sagoss"],
        title: "Test Card",
        body: "This is some body for the card here, this will show as details of card",
        deepLink: "/patrolla"
    )
}

func homeImageMock(
    image: String = "Preview"
) -> HomeCardModel{
   return HomeCardModel(
        image: image,
        type: HomeCardType.image,
        tags: ["Android", "Compose", "Sagoss"],
        title: "Test Card",
        body: "This is some body for the card here, this will show as details of card",
        deepLink: "/patrolla"
    )
}
