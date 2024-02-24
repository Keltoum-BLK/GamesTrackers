//
//  PlatformCard.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 18/02/2024.
//

import SwiftUI

struct PlatformCard: View {
        var platform: GamePlatformItem
        var body: some View {
            ZStack(alignment: .center) {
                Color(.black)
                if platform.name != "Xbox" {
                    Image(platform.image)
                        .resizable(resizingMode: .stretch)
                        .frame(width: 300, height: 100)
                    
                    Text(platform.name)
                        .padding(.leading, 90)
                        .font(.system(size: 30, weight: .black, design: .rounded))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 400, height: 300)
                            .multicolorGlow()
                } else {
                    Image(platform.image)
                        .resizable()
                        .frame(width: 500, height: 200)
                }
                
            }
            .padding()
            .frame(width: 300,height: 100)
            .opacity(0.8)
            .clipShape(.rect(cornerRadius: 20))
            .shadow(radius: 3)
        }
}

#Preview {
    PlatformCard(platform: GamePlatformItem(name: "Nintendo", image: "nintendo"))
}
extension View {
    func multicolorGlow() -> some View {
        ZStack {
            ForEach(0..<2) { i in
                Rectangle()
                    .fill(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center))
                    .frame(width: 400)
                    .mask(self.blur(radius: 20))
                    .overlay(self.blur(radius: 5 - CGFloat(i * 5)))
            }
        }
    }
    func multicolorTabGlow() -> some View {
        ZStack {
            ForEach(0..<2) { i in
                Rectangle()
                    .fill(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center))
                    .mask(self.blur(radius: 20))
                    .overlay(self.blur(radius: 5 - CGFloat(i * 5)))
            }
        }
    }
    
    func multicolorCircleGlow() -> some View {
        ZStack {
            ForEach(0..<2) { i in
                Circle()
                    .fill(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center))
                    .mask(self.blur(radius: 20))
                    .overlay(self.blur(radius: 5 - CGFloat(i * 5)))
            }
        }
    }
}
