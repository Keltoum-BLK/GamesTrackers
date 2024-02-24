//
//  SearchView.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 18/02/2024.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = "Quel jeu cherches-tu?"
    var body: some View {
        HStack {
                   TextField("Rechercher", text: $searchText)
                       .padding()
                       .background(Color(.white))
                       .cornerRadius(10)
                       .padding(.leading,1)
                   
                   Button(action: {
                       // Action à effectuer lorsque le bouton est appuyé
                       print("Recherche effectuée pour : \(searchText)")
                   }) {
                       Text("Rechercher")
                           .foregroundColor(.white)
                           .padding()
                           .background(Color.purple)
                           .cornerRadius(10)
                   }
                   .padding(1)
               }.overlay(
                   RoundedRectangle(cornerRadius: 10)
                       .stroke(Color.purple, lineWidth: 5))
            .background(.white)
            .clipShape(.rect(cornerRadius: 10))
            .padding(20)
            .shadow(radius: 10)
          
            
    }
}

#Preview {
    SearchView()
}
