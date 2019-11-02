//
//  TableViewController.swift
//  CanteensTest
//
//  Created by Mathias Larsen on 01/11/2019.
//  Copyright © 2019 MadneZ. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var dishes: [Dish] = []
    
    func createArray()->[Dish]{
        var temp: [Dish] = []
        
        let dish1 = Dish(name: "BBQ Ribs", img: #imageLiteral(resourceName: "BBQ-Riben"), rating: #imageLiteral(resourceName: "5Star"))
        let dish2 = Dish(name: "Meatloaf", img: #imageLiteral(resourceName: "Farsbrød"), rating: #imageLiteral(resourceName: "3Star"))
        let dish3 = Dish(name: "Fish Tacos", img: #imageLiteral(resourceName: "Fish Tacos"), rating: #imageLiteral(resourceName: "4Star"))
        let dish4 = Dish(name: "Bean Soup", img: #imageLiteral(resourceName: "Italiansk-Bønne-Suppe"), rating: #imageLiteral(resourceName: "3Star"))
        let dish5 = Dish(name: "Lasange", img: #imageLiteral(resourceName: "Lasange"), rating: #imageLiteral(resourceName: "3Star"))
        let dish6 = Dish(name: "Lentil Salad", img: #imageLiteral(resourceName: "Lentil Salad"), rating: #imageLiteral(resourceName: "4Star"))
        let dish7 = Dish(name: "Quinoa Salad", img: #imageLiteral(resourceName: "Quinoa-Salat"), rating: #imageLiteral(resourceName: "4Star"))
        let dish8 = Dish(name: "Spinach Quiche", img: #imageLiteral(resourceName: "Spinat-Quiche"), rating: #imageLiteral(resourceName: "5Star"))
        let dish9 = Dish(name: "Tuna Salad", img: #imageLiteral(resourceName: "Tun-Salat"), rating: #imageLiteral(resourceName: "3Star"))
        let dish10 = Dish(name: "Potato Salad", img: #imageLiteral(resourceName: "Tysk-Kartoffel-Salat"), rating: #imageLiteral(resourceName: "3Star"))
        let dish11 = Dish(name: "Zucchini Bread", img: #imageLiteral(resourceName: "Zucchini Bread"), rating: #imageLiteral(resourceName: "4Star"))
        let dish12 = Dish(name: "Grilled Salmon", img: #imageLiteral(resourceName: "Grillet-Laks"), rating: #imageLiteral(resourceName: "5Star"))
        
        
        temp.append(dish1)
        temp.append(dish2)
        temp.append(dish3)
        temp.append(dish4)
        temp.append(dish5)
        temp.append(dish6)
        temp.append(dish7)
        temp.append(dish8)
        temp.append(dish9)
        temp.append(dish10)
        temp.append(dish11)
        temp.append(dish12)
        
        return temp
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dishes = createArray()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dishes.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dish = dishes[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DishCell") as! DishTableViewCell
        cell.setFields(dish: dish)

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
