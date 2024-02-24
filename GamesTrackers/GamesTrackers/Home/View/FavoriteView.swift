//
//  FavoriteView.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 19/02/2024.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("neon")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 20) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .background(.ultraThinMaterial)
                            .frame(width: 300, height: 100)
                        Text("Ta liste de jeux")
                            .font(.system(size: 30, weight: .black, design: .rounded))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 400, height: 300)
                                .multicolorGlow()
                    } .frame(width: 300, height: 100)
                        .clipShape(.rect(cornerRadius: 20))
                    
                    Image("gamepad")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    ForEach(platformList, id: \.id) { platform in
                        NavigationLink(destination: PlatformView()) {
                            PlatformCard(platform: platform)
                                .foregroundColor(.black)
                        }
                    }
                }
            }.padding(.top, -80)
        }
    }
}

#Preview {
    FavoriteView()
}
