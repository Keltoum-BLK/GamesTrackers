//
//  HomeTitleView.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 24/02/2024.
//

import SwiftUI

struct HomeTitleView: View {
    var body: some View {
        ZStack {
            Image("Home")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350)
                .clipShape(.rect(cornerRadius: 20))
            
            Text("Recherche de jeux")
                .font(.system(size: 30, weight: .black, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 350)
                    .multilineTextAlignment(.center)
                    .multicolorGlow()
        }  .frame(width: 350, height: 150)
    }
}

#Preview {
    HomeTitleView()
}

struct CircleOrderView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .frame(width: 70,height: 70)
            Image("achat")
                .resizable()
                .frame(width: 50,height: 50)
                .rotationEffect(.degrees(-60))
        }
    }
}

