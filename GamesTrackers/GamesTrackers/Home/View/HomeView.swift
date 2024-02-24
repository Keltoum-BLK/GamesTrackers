//
//  ContentView.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 18/02/2024.
//

import SwiftUI
import CoreData

struct HomeView: View {
    var columns = [GridItem(.adaptive(minimum: 170))]
   

    var body: some View {
        NavigationView {
            ZStack {
                    Image("gamingBlur")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
              
                VStack(spacing: 5) {
                        HomeTitleView()
                        SearchView()
                        ScrollView {
                            LazyVGrid(columns: columns, spacing: 20) {
                                ForEach(games, id: \.id) { game in
                                    NavigationLink(destination: GamePageView()) {
                                        GameCard(game: game)
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                        }.padding([.leading, .trailing])
                    }.background(.clear)
                }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

#Preview {
    HomeView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
