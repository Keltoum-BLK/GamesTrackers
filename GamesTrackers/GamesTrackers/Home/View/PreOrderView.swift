//
//  PrecoView.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 19/02/2024.
//

import SwiftUI

struct PreOrderView: View {
        var body: some View {
            NavigationView {
                ZStack {
                    Image("univers")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                  
                    VStack(spacing: 20) {
                        ZStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .background(.ultraThinMaterial)
                                    .frame(width: 300, height: 100)
                                
                                Text("Tes Précommandes")
                                    .font(.system(size: 20, weight: .black, design: .rounded))
                                    .foregroundColor(.white)
                                    .textCase(.uppercase)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 400, height: 300)
                                    .multicolorGlow()
                                
                                
                            } .frame(width: 300, height: 100)
                                .clipShape(.rect(cornerRadius: 20))
                            
                            
                            CircleOrderView()
                                .padding(.leading, 280)
                                .padding(.top, 80)
                            
                        }
                        ScrollView{
                            VStack(spacing: 10) {
                                ForEach(platformList, id: \.id) { platform in
                                    NavigationLink(destination: PlatformView()) {
                                        PlatformCard(platform: platform)
                                            .foregroundColor(.black)
                                    }
                                }
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .background(.ultraThinMaterial)
                                        .frame(width: 300, height: 100)
                                    
                                    Text("Et si on comparait....")
                                        .font(.system(size: 20, weight: .black, design: .rounded))
                                        .foregroundColor(.white)
                                        .textCase(.uppercase)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 400, height: 300)
                                        .multicolorGlow()
                                    
                                    
                                } .frame(width: 300, height: 50)
                                    .clipShape(.rect(cornerRadius: 20))
                                
                                Link(destination: URL(string:"https://ledenicheur.fr/category.php?k=378")!) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .background(.ultraThinMaterial)
                                            .frame(width: 300, height: 100)
                                        
                                        Image("leDenicheur")
                                            .resizable()
                                    } .frame(width: 300, height: 100)
                                        .clipShape(.rect(cornerRadius: 20))
                                }
                                
                            }
                        }
                    }
                }
            }
        }
}

#Preview {
    PreOrderView()
}
