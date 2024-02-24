//
//  MainTabView.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 24/02/2024.
//


import SwiftUI

enum TabbedItems: Int, CaseIterable{
    case home = 0
    case list
    case preOrder
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .list:
            return "Tes Jeux"
        case .preOrder:
            return "Achats \n en cours"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "house.fill"
        case .list:
            return "books.vertical.fill"
        case .preOrder:
            return "cart.fill"
        }
    }
}

struct MainTabbedView: View {
    
    @State var selectedTab = 0
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground() // <- HERE
        appearance.stackedLayoutAppearance.normal.iconColor = .white
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        appearance.stackedLayoutAppearance.selected.iconColor = UIColor(Color.accentColor)
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(Color.accentColor)]

        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(0)

                FavoriteView()
                    .tag(1)

                PreOrderView()
                    .tag(2)
            }

            ZStack{
                HStack{
                    ForEach((TabbedItems.allCases), id: \.self){ item in
                        Button{
                            selectedTab = item.rawValue
                        } label: {
                            CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                        }
                    }
                }
                .padding(6)
            }
            .frame(height: 70)
            .background(.ultraThinMaterial.opacity(0.8))
            .cornerRadius(35)
            .padding(.horizontal, 26)
        }
    }
}

#Preview {
    MainTabbedView()
}

extension MainTabbedView{
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View{
        HStack(spacing: 10){
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .white : .purple)
                .frame(width: 20, height: 20)
            if isActive{
                Text(title)
                    .foregroundColor(isActive ? .white : .purple)
                    .font(.system(size: 14, weight: .black, design: .rounded))
                    .multicolorTabGlow()
                    .lineLimit(2)
            }
            Spacer()
        }
        .frame(width: isActive ? .infinity : 60, height: 60)
        .background(isActive ? .purple : .clear)
        .cornerRadius(30)
    }
}

