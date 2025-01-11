//
//  WorkOutCardView.swift
//  Fitmate
//
//  Created by A.F. Adib on 11/1/25.
//

import SwiftUI


struct WorkOutCardView: View {
    
    @State var workout : Workout
    
    var body: some View {
        
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundColor(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack(spacing: 16) {
                HStack {
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    
                    Text(workout.duration)
                }
                HStack {
                    Text(workout.date)
                    
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    WorkOutCardView(workout: Workout(id: 0, title: "Running", image: "figure.walk", tintColor: .cyan, duration: "51 mins", date: "Sept 2", calories: "512 KCal"))
}
