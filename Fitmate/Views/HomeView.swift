//
//  HomeView.swift
//  Fitmate
//
//  Created by A.F. Adib on 10/1/25.
//

import SwiftUI

struct HomeView: View {
    
   @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    HStack {
                        
                        Spacer()
                     
                        //Overview section
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(Color.red)
                                
                                Text("\(viewModel.calories)")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(Color.green)
                                
                                Text("\(viewModel.active)")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(Color.blue)
                                
                                Text("\(viewModel.stand)")
                                    .bold()
                            }
                        }
                        
                        Spacer()
                        
                        //Chart section
                        ZStack {
                            ProgressCircleView(progress: $viewModel.calories, goal: 600, color: .red)
                            ProgressCircleView(progress: $viewModel.active, goal: 60, color: .green).padding(.all, 20)
                            ProgressCircleView(progress: $viewModel.stand, goal: 12, color: .blue).padding(.all, 40)
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .padding()
                    
                    
                    //Fitness Activity section
                    HStack{
                        Text("Fitness Activity")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button {
                            print("Show More")
                        } label: {
                            Text("Show More")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                       
                        ForEach(viewModel.mockActivities, id: \.id) { activity in
                                ActivityCardView(activity: activity)
                        }
                    }
                    .padding(.horizontal)
                    
                    
                    //Recent WorkOut section
                    HStack {
                        Text("Recent Workouts")
                            .font(.title2)
                        
                        Spacer()
                        
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show More")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack{
                        ForEach(viewModel.mockWorkouts, id: \.id) { workout in
                              WorkOutCardView(workout: workout)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
