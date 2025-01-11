//
//  HeathManager.swift
//  Fitmate
//
//  Created by A.F. Adib on 12/1/25.
//

import Foundation
import HealthKit

class HealthManager {
    
    let shared = HealthManager()
    let healthStore = HKHealthStore()
    
    private init() { 
        
        let calories = HKQuantityType(.activeEnergyBurned)
        let exercise = HKQuantityType(.appleExerciseTime)
        let stand = HKCategoryType(.appleStandHour)
        
        Task {
            do {
                try await healthStore.requestAuthorization(toShare: [], read: [])
            } catch {
                
            }
        }
    }
}
