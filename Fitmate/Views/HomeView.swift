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
                    
                    Spacer()
                    
                    VStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.red)
                            
                            Text("123 KCal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.green)
                            
                            Text("53 Mins")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.blue)
                            
                            Text("6 Hours")
                                .bold()
                        }
                    }
                    
                    Spacer()
                    
                    ZStack {
                        ZStack {
                            Circle()
                                .stroke(.red.opacity(0.3), lineWidth: 20)
                            
                            Circle()
                                .trim(from: 0, to: 0.3)
                                .stroke(.red, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                                .rotationEffect(.degrees(-90))
                                .shadow(radius: 5)
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
