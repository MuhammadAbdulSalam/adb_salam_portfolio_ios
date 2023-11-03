//
//  RootContainer.swift
//  AdbSalamPortfolio
//
//  Created by Muhammad Abdulsalam on 27/10/2023.
//

import Foundation
import SwiftUI

struct RootContainer: View {
    
    var body: some View {
        navigationBar()
    }
}

private func navigationBar () -> some View {
    return TabView {
        HomeScreen()
            .tabItem {
                Image(systemName: "house.circle")
                Text("Home")
            }
        Text("Info Screen")
            .tabItem {
                Image(systemName: "info.circle")
                Text("Info")
            }
        Text("Videos Screen")
            .tabItem {
                Image(systemName: "play.fill")
                Text("Videos")
            }
        Text("Reivews Screen")
            .tabItem {
                Image(systemName: "message.circle.fill")
                Text("Reviews")
            }
    }
}


#Preview {
    RootContainer()
}

#Preview {
    RootContainer()
        .environment(\.colorScheme, .dark)
}
