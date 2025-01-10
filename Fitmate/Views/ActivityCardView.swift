//
//  ActivityCardView.swift
//  Fitmate
//
//  Created by A.F. Adib on 11/1/25.
//

import SwiftUI

struct ActivityCardView: View {
    
    var body: some View {
            
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Todays Steps")
                        Text("Goal 10,000")
                    }
                    
                    Spacer()
                    
                    Image(systemName: "figure.walk")
                        .foregroundColor(.green)
                }
                
                Text("6,121")
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCardView()
}
