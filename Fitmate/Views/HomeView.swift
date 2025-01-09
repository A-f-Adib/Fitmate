//
//  HomeView.swift
//  Fitmate
//
//  Created by A.F. Adib on 10/1/25.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                HStack {
                    VStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.red)
                            
                            Text("123 KCal")
                                .bold()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
