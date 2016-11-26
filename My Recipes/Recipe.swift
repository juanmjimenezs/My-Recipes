//
//  Recipe.swift
//  My Recipes
//
//  Created by Juan Manuel Jimenez Sanchez on 25/10/16.
//  Copyright © 2016 Juan Manuel Jimenez Sanchez. All rights reserved.
//

import Foundation
import UIKit

class Recipe: NSObject {
    var name: String!
    var image: UIImage!
    var time: Int = 0
    var ingredients: [String]!
    var steps: [String]!
    
    var rating: String = "rating"
    
    init(name: String, image: UIImage, time: Int, ingredients: [String], steps: [String]) {
        self.name = name
        self.image = image
        self.time = time
        self.ingredients = ingredients
        self.steps = steps
    }
}
