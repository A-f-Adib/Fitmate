//
//  FitnessTabView.swift
//  Fitmate
//
//  Created by A.F. Adib on 10/1/25.
//

import SwiftUI

struct FitnessTabView: View {
    
    @State var selectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
           HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HistoricDataView()
                .tag("Historic")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxix")
                    Text("Charts")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
