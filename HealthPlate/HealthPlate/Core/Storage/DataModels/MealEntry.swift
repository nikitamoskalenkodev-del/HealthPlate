//
//  MealEntry.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//

import SwiftData
import Foundation

@Model
final class MealEntry {
    var id: String
    var userId: String
    var foods: [Food]
    var mealType: String  // "breakfast", "lunch", "dinner", "snack"
    var date: Date
    var totalCalories: Int
    var totalProtein: Double
    var totalFat: Double
    var totalCarbs: Double
    var notes: String?
    var photoData: Data?  // Оригинальное фото
    var createdAt: Date
    
    init(
        id: String = UUID().uuidString,
        userId: String,
        mealType: String,
        date: Date = Date(),
        photoData: Data? = nil
    ) {
        self.id = id
        self.userId = userId
        self.foods = []
        self.mealType = mealType
        self.date = date
        self.totalCalories = 0
        self.totalProtein = 0
        self.totalFat = 0
        self.totalCarbs = 0
        self.photoData = photoData
        self.createdAt = Date()
    }
    
    /// Пересчёт общей питательности
    func recalculateTotals() {
        totalCalories = foods.reduce(0) { $0 + $1.calories }
        totalProtein = foods.reduce(0) { $0 + $1.protein }
        totalFat = foods.reduce(0) { $0 + $1.fat }
        totalCarbs = foods.reduce(0) { $0 + $1.carbs }
    }
    
    /// Добавить блюдо в приём пищи
    func addFood(_ food: Food) {
        foods.append(food)
        recalculateTotals()
    }
    
    /// Удалить блюдо из приёма пищи
    func removeFood(_ food: Food) {
        foods.removeAll { $0.id == food.id }
        recalculateTotals()
    }
}
