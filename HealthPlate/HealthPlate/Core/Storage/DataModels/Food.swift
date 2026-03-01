//
//  Food.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//

import SwiftData
import Foundation

@Model
final class Food {
    var id: String
    var name: String
//    var description: String?
    var calories: Int
    var protein: Double      // в граммах
    var fat: Double          // в граммах
    var carbs: Double        // в граммах
    var servingSize: String  // "100g", "1 cup", и т.д.
    var servingWeight: Double // в граммах
    var source: String  // "ai_analysis", "manual_entry", "database"
    var imageData: Data?
    var createdAt: Date
    
    init(
        id: String = UUID().uuidString,
        name: String,
        calories: Int,
        protein: Double,
        fat: Double,
        carbs: Double,
        servingSize: String = "100g",
        servingWeight: Double = 100,
        source: String = "manual_entry",
        imageData: Data? = nil
    ) {
        self.id = id
        self.name = name
        self.calories = calories
        self.protein = protein
        self.fat = fat
        self.carbs = carbs
        self.servingSize = servingSize
        self.servingWeight = servingWeight
        self.source = source
        self.imageData = imageData
        self.createdAt = Date()
    }
}
