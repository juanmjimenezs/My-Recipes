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
        var recipe = Recipe(
            name: "Tortilla de patatas",
            image: #imageLiteral(resourceName: "tortilla"),
            time: 20,
            ingredients: ["Patatas", "Huevos", "Cebolla"],
            steps: [
                "Pelar las patatas y la cebolla",
                "Cortar las patatas y la cebolla y sofreir",
                "Batir los huevos y echarlos durante un minuto a la sartén con el resto"])
        self.recipes.append(recipe)
        
        recipe = Recipe(
            name: "Pizza margarita",
            image: #imageLiteral(resourceName: "pizza"),
            time: 60,
            ingredients: ["Harina", "Levadura", "Aceite", "Sal", "Salsa de tomate", "Queso"],
            steps: [
                "Hacemos la masa con harina, levadura, aceite, sal y agua",
                "Dejamos reposar la masa 30 minutos",
                "Extendemos la masa encima de la bandeja y añadimos el resto de ingredientes",
                "Hornear por 12 minutos"])
        self.recipes.append(recipe)
        
        recipe = Recipe(
            name: "Hamburguesa con queso",
            image: #imageLiteral(resourceName: "hamburguesa"),
            time: 10,
            ingredients: ["Pan de hamburguesa", "Lechuga", "Tomate", "Queso", "Carne de hamburguesa"],
            steps: [
                "Poner al fuego la carne al gusto",
                "Montar la hamburguesa con sus ingredientes entre los panes"])
        self.recipes.append(recipe)
        
        recipe = Recipe(
            name: "Ensalada cesar",
            image: #imageLiteral(resourceName: "ensalada"),
            time: 15,
            ingredients: ["Lechuga", "Tomate", "Cebolla", "Pimiento", "Salsa César", "Pollo"],
            steps: [
                "Limpiar todas las verduras y trocearlas",
                "Cocer el pollo al gusto",
                "Juntar todos los ingredientes en una ensaladera y servir con salsa César"])
        self.recipes.append(recipe)
        
        recipe = Recipe(
            name: "Paella",
            image: #imageLiteral(resourceName: "paella"),
            time: 30,
            ingredients: ["Arroz bomba", "Marisco variado", "Caldo de pescado", "Guisantes"],
            steps: [
                "Tostar el arroz en una paellera.",
                "Tras dorarse echar el caldo de pescado, los mariscos y los guisantes.",
                "Dejar cocer a fuego lento hasta que todo el arroz se haya bebido el caldo."])
        self.recipes.append(recipe)
        
        recipe = Recipe(
            name: "Batido de fresa",
            image: #imageLiteral(resourceName: "batido-fresa"),
            time: 5,
            ingredients: ["10 fresas maduras", "Leche", "Azucar"],
            steps: [
                "Limpiar y cortar las fresas.",
                "Mezclarlas con la leche y una cucharada de azucar.",
                "Licuar hasta que conseguir el resultado esperado."])
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! RecipeCell
        /*cell.textLabel?.text = recipe.name
        cell.imageView?.image = recipe.image*/
        
        cell.thumbnailimageView.image = recipe.image
        cell.nameLabel.text = recipe.name
        cell.timeLabel.text = "\(recipe.time!) min"
        cell.ingredientsLabel.text = "Ingredients: \(recipe.ingredients.count)"
        
//        cell.thumbnailimageView.layer.cornerRadius = 42.0
//        cell.thumbnailimageView.clipsToBounds = true
        
        return cell
    }
}
/*
*/
