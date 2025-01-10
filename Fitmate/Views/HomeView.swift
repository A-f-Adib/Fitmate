//
//  HomeView.swift
//  Fitmate
//
//  Created by A.F. Adib on 10/1/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    var mockActivities = [
        Activity(id: 0,  title: "Todays Steps",  subTitle: "Goal 12,000", image: "figure.walk", tintColor: .green,  amount: "9812"),
        Activity(id: 1,  title: "Todays Steps",  subTitle: "Goal 12,000", image: "figure.walk", tintColor: .red,  amount: "12846"),
        Activity(id: 2,  title: "Todays Steps",  subTitle: "Goal 12,000", image: "figure.walk", tintColor: .blue,  amount: "10483"),
        Activity(id: 3,  title: "Todays Steps",  subTitle: "Goal 12,000", image: "figure.walk", tintColor: .purple,  amount: "4893")
    ]
    
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 mins", date: "Sept 2", calories: "512 KCal"),
        Workout(id: 1, title: "Walking", image: "figure.walk", tintColor: .mint, duration: "30 mins", date: "Sept 3", calories: "344 KCal"),
        Workout(id: 0, title: "Strength training", image: "figure.walk", tintColor: .indigo, duration: "25 mins", date: "Sept 4", calories: "567 KCal"),
        Workout(id: 0, title: "Sprint Running", image: "figure.run", tintColor: .purple, duration: "40 mins", date: "Sept 5", calories: "980 KCal")
    ]
    
    
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
                        
                        //Chart section
                        ZStack {
                            ProgressCircleView(progress: $calories, goal: 600, color: .red)
                            ProgressCircleView(progress: $active, goal: 60, color: .green).padding(.all, 20)
                            ProgressCircleView(progress: $stand, goal: 12, color: .blue).padding(.all, 40)
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
                       
                        ForEach(mockActivities, id: \.id) { activity in
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
                        ForEach(mockWorkouts, id: \.id) { workout in
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
