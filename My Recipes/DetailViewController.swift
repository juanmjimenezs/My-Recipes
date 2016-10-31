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
