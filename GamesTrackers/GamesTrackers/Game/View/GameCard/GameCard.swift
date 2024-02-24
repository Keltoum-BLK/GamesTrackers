//
//  GameCard.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 18/02/2024.
//

import SwiftUI

struct GameCard: View {
    var game: Game
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.white
            Image(game.backgroundImage ?? "game-console")
                .resizable()
                .clipShape(.rect(cornerRadius: 20))
                .frame(width: 170)
                .scaledToFit()
            
            VStack(alignment: .leading) {
                Text(game.name ?? "No Game")
                    .bold()
                Text(game.released ?? "12/12/2023")
                    .font(.caption)
            }
            .padding()
            .frame(width: 170, alignment: .leading)
            .background(.ultraThickMaterial)
            .clipShape(.rect(cornerRadius: 20))
        }
        .frame(width: 170, height: 230)
        .clipShape(.rect(cornerRadius: 20))
        .shadow(radius: 3)
    }
}
