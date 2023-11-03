//
//  HomeCarousalModel.swift
//  AdbSalamPortfolio
//
//  Created by Muhammad Abdulsalam on 03/11/2023.
//

import Foundation

struct HomeCarousalModel: Identifiable{
    let id = UUID()
    let image: String
    let title: String
    let subTitle: String
}

let homeCaorusalMocks = [
    HomeCarousalModel(
        image: "Shimmer",
        title: "Synchronised Shimmer",
        subTitle: "Shimmer skeleton loader reinvented. Have a look at this sample"
    ),
    HomeCarousalModel(
        image: "Transform",
        title: "Transformable Gallery",
        subTitle: "Transformation, grid arrangement selection and fancy carousals"
    ),
    HomeCarousalModel(
        image: "AnimationSample",
        title: "Animation Experiments",
        subTitle: "Some of animation components visualised in form of graphs"
    ),
    HomeCarousalModel(
        image: "DarkMode",
        title: "Explore Dark Mode",
        subTitle: "Insights of how dark mode for this app is implemented"
    ),
    HomeCarousalModel(
        image: "PlaceHolderCard",
        title: "Placeholder Sample",
        subTitle: "Once I ll figure out with to add here, will add!"
    )
]
