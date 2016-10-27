//
//  ViewController.swift
//  My Recipes
//
//  Created by Juan Manuel Jimenez Sanchez on 25/10/16.
//  Copyright © 2016 Juan Manuel Jimenez Sanchez. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var recipes: [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var recipe = Recipe(name: "Tortilla de patatas", image: #imageLiteral(resourceName: "tortilla"))
        self.recipes.append(recipe)
        
        recipe = Recipe(name: "Pizza margarita", image: #imageLiteral(resourceName: "pizza"))
        self.recipes.append(recipe)
        
        recipe = Recipe(name: "Hamburguesa con queso", image: #imageLiteral(resourceName: "hamburguesa"))
        self.recipes.append(recipe)
        
        recipe = Recipe(name: "Ensalada cesar", image: #imageLiteral(resourceName: "ensalada"))
        self.recipes.append(recipe)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //MARK: -UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cellID = "recipeCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = recipe.name
        cell.imageView?.image = recipe.image
        
        return cell
    }
}

