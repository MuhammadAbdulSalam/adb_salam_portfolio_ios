//
//  HomeCard.swift
//  AdbSalamPortfolio
//
//  Created by Muhammad Abdulsalam on 03/11/2023.
//

import Foundation
import SwiftUI
import Lottie

func HomeCard(
    item: HomeCardModel
) -> some View {
    return VStack{
        
        if(item.type == HomeCardType.image){
            Image(item.image)
                .resizable()
                .frame(width: .infinity, height: 200)
                .aspectRatio(contentMode: .fit)
            
        }
        else{
            LottieView(name: item.image, loopMode: .loop)
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
                .scaleEffect(0.2)
        }
        
        Text(item.title)
            .font(.system(size: 14))
            .fontWeight(.bold)
            .padding(.horizontal, 6)
            .frame(maxWidth: .infinity, alignment: .leading)
        Spacer().frame(height: 6)
        
        Text(item.body)
            .font(.system(size: 12))
            .frame(maxWidth: .infinity, alignment: .leading)
            .truncationMode(.tail)
            .padding(.horizontal, 8)
            .padding(.vertical, 6)
        
        HStack{
            Button {
                // Write code to handle login action
            } label: {
                Text("view")
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
            }
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
            .padding(.leading, 10)
            
            
            Button {
                // Write code to handle login action
            } label: {
                Text("read more")
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
            }
            .foregroundColor(Color.blue)
            .cornerRadius(20)
            
            Spacer()
        }.padding(.bottom, 10)
        
    }
    .frame(maxWidth: .infinity)
    .background(Color("Background"))
    .clipShape(
        .rect(
            topLeadingRadius: 20,
            bottomLeadingRadius: 20,
            bottomTrailingRadius: 20,
            topTrailingRadius: 20
        )
    )
    .padding(.horizontal, 10)
    
}

struct LottieView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }

    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name: name)
        animationView.play()
        animationView.loopMode = loopMode
        animationView.contentMode = .scaleAspectFit
        return animationView
    }
}

#Preview{
    HomeCard(item: homeImageMock())
}


#Preview{
    HomeCard(item: homeLottiMock())
}
