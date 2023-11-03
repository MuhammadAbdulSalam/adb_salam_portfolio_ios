import Foundation
import SwiftUI

struct HomeScreen: View {
    var body: some View {
        HomeScreenView(
            carousalCardItems: homeCaorusalMocks,
            homeCardItems: homeCardMock
        )
    }
}

/*
 Home Screen View
 */
func HomeScreenView(
    carousalCardItems: [HomeCarousalModel],
    homeCardItems: [HomeCardModel]
) -> some View {
    return ScrollView{
        
        VStack{
            circularImage()
            Text("Abdul Salam").font(.title2)
            Text("Software Engenieer").font(.body)
        }
        
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(homeCaorusalMocks){ item in
                    Card(
                        image: item.image,
                        title: item.title,
                        body: item.subTitle
                    )
                }
            }.padding()
        }
        
        ForEach(homeCardItems){ item in
            HomeCard(item: item).padding(.bottom, 30)
        }
    }
}

#Preview {
    HomeScreenView(carousalCardItems: homeCaorusalMocks, homeCardItems: homeCardMock)
}


#Preview {
    HomeScreenView(carousalCardItems: homeCaorusalMocks, homeCardItems: homeCardMock)
        .environment(\.colorScheme, .dark)
}
