//
//  HomeViewModel.swift
//  Fitmate
//
//  Created by A.F. Adib on 12/1/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    let healthManager = HealthManager.shared
    
    @Published var calories: Int = 123
    @Published var active: Int = 52
    @Published var stand: Int = 8
    
   @Published var mockActivities = [
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
}
