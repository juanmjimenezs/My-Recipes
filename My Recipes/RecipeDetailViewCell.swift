//
//  RecipeDetailViewCell.swift
//  My Recipes
//
//  Created by Juan Manuel Jimenez Sanchez on 1/11/16.
//  Copyright © 2016 Juan Manuel Jimenez Sanchez. All rights reserved.
//

import UIKit

class RecipeDetailViewCell: UITableViewCell {

    @IBOutlet var keyLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
