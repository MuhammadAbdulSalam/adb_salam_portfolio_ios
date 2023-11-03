import Foundation
import SwiftUI


func circularImage() -> some View{
    return ZStack {
        Image("ProfileImage")
            .resizable()
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
            .frame(width: 160, height: 160)    }
}


#Preview{
    circularImage()
}

