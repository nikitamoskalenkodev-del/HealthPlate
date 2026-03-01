//
//  UserProfile.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//


import SwiftData
import Foundation

// MARK: - User Profile Model

@Model
final class UserProfile {
    var id: String
    var email: String
    var displayName: String
    var age: Int
    var gender: String  // "male", "female", "other"
    var heightCm: Int   // высота в см
    var weightKg: Double
    var activityLevel: String  // "sedentary", "light", "moderate", "active", "veryActive"
    var goal: String  // "lose", "maintain", "gain"
    var dailyCalorieGoal: Int = 0
    var createdAt: Date
    var updatedAt: Date
    
    init(
        id: String,
        email: String,
        displayName: String,
        age: Int,
        gender: String,
        heightCm: Int,
        weightKg: Double,
        activityLevel: String,
        goal: String
    ) {
        self.id = id
        self.email = email
        self.displayName = displayName
        self.age = age
        self.gender = gender
        self.heightCm = heightCm
        self.weightKg = weightKg
        self.activityLevel = activityLevel
        self.goal = goal
        self.createdAt = Date()
        self.updatedAt = Date()
        
        // Расчёт дневной нормы (упрощённая формула Harris-Benedict)
        self.dailyCalorieGoal = calculateDailyCalorieGoal()
    }
    
    /// Расчёт дневной нормы калорий
    private func calculateDailyCalorieGoal() -> Int {
        // Базовый расход (BMR)
        let bmr: Double
        
        if gender == "male" {
            bmr = 88.362 + (13.397 * weightKg) + (4.799 * Double(heightCm)) - (5.677 * Double(age))
        } else {
            bmr = 447.593 + (9.247 * weightKg) + (3.098 * Double(heightCm)) - (4.330 * Double(age))
        }
        
        // Коэффициент активности
        let activityMultiplier: Double
        switch activityLevel {
        case "sedentary": activityMultiplier = 1.2
        case "light": activityMultiplier = 1.375
        case "moderate": activityMultiplier = 1.55
        case "active": activityMultiplier = 1.725
        case "veryActive": activityMultiplier = 1.9
        default: activityMultiplier = 1.55
        }
        
        let tdee = bmr * activityMultiplier
        
        // Корректировка на цель
        let adjustedCalories: Double
        switch goal {
        case "lose": adjustedCalories = tdee - 500  // дефицит 500 калорий
        case "gain": adjustedCalories = tdee + 300  // профицит 300 калорий
        default: adjustedCalories = tdee  // поддержание
        }
        
        return Int(adjustedCalories)
    }
}
