//
//  HeathManager.swift
//  Fitmate
//
//  Created by A.F. Adib on 12/1/25.
//

import Foundation
import HealthKit

class HealthManager {
    
    static let shared = HealthManager()
    let healthStore = HKHealthStore()
    
    private init() { 
        
        let calories = HKQuantityType(.activeEnergyBurned)
        let exercise = HKQuantityType(.appleExerciseTime)
        let stand = HKCategoryType(.appleStandHour)
        
        let healthTypes : Set = [calories, exercise, stand]
        
        Task {
            do {
                try await healthStore.requestAuthorization(toShare: [], read: healthTypes)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchTodayCaloriesBurned(completion: @escaping(Result<Double, Error>) -> Void) {
        let calories = HKQuantityType(.activeEnergyBurned)
        let predicate = HKQuery.predicateForSamples(withStart: .startOfDay, end: Date())
    }
}


extension Date {
    static var startOfDay: Date {
        let calendar = Calendar.current
        return calendar.startOfDay(for: Date())
    }
}
