//
//  RecipeModel.swift
//  AvocadoApp
//
//  Created by Sandeep Maurya on 11/07/23.
//
import SwiftUI

// MARK: - RECIPE MODEL

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
