//
//  FitnessTabView.swift
//  Fitmate
//
//  Created by A.F. Adib on 10/1/25.
//

import SwiftUI

struct FitnessTabView: View {
    
    @State var selectedTab = "Home"
    
    var body: some View {
        TabView(selection: $selectedTab) {
           HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                }
            
            HistoricDataView()
                .tag("Historic")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxix")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
