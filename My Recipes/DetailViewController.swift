//
//  DetailViewController.swift
//  My Recipes
//
//  Created by Juan Manuel Jimenez Sanchez on 31/10/16.
//  Copyright © 2016 Juan Manuel Jimenez Sanchez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var recipeNameLabel: UILabel!
    @IBOutlet var recipeImageView: UIImageView!
    var recipe: Recipe!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.recipeImageView.image = self.recipe.image
        self.recipeNameLabel.text = self.recipe.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailRecipeCell", for: indexPath) as! RecipeDetailViewCell
        
        switch indexPath.row {
        case 0:
            cell.keyLabel.text = "Name:"
            cell.valueLabel.text = self.recipe.name
        case 1:
            cell.keyLabel.text = "Tiempo:"
            cell.valueLabel.text = "\(self.recipe.time) min"
        case 2:
            cell.keyLabel.text = "Favorita:"
            if self.recipe.isFavorite {
                cell.valueLabel.text = "Si"
            } else {
                cell.valueLabel.text = "No"
            }
        default:
            break
        }
        
        return cell
    }
}

extension DetailViewController: UITableViewDelegate {
    
}
