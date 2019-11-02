//
//  VitaminTableViewController.swift
//  CanteensTest
//
//  Created by Mathias Larsen on 02/11/2019.
//  Copyright © 2019 MadneZ. All rights reserved.
//

import UIKit

class VitaminTableViewController: UITableViewController {

    
    var vitamins: [Vitamin] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vitamins = createArray()
    }

    func createArray()->[Vitamin]{
        var tempVitamins: [Vitamin] = []
        
        let vitamin1 = Vitamin(name: "A-vitamin", value: "756 RE", progress: 0.79, procent: "79")
        let vitamin2 = Vitamin(name: "Retinol", value: "57 ug", progress: 0.44, procent: "44")
        let vitamin3 = Vitamin(name: "D-vitamin", value: "33 ug", progress: 21, procent: "21")
        let vitamin4 = Vitamin(name: "D3-vitamin", value: "0 ug", progress: 0.0, procent: "0")
        let vitamin5 = Vitamin(name: "E-vitamin", value: "0,75 a-TE", progress: 0.38, procent: "38")
        let vitamin6 = Vitamin(name: "alfa-tokoferol", value: "0,880 mg", progress: 0.77, procent: "77")
        let vitamin7 = Vitamin(name: "K1-vitamin", value: "23 ug", progress: 0.90, procent: "90")
        let vitamin8 = Vitamin(name: "B1-vitamin", value: "0,09 mg", progress: 0.71, procent: "71")
        let vitamin9 = Vitamin(name: "B2-vitamin", value: "0,054 mg", progress: 0.43, procent: "43")
        let vitamin10 = Vitamin(name: "Niacin", value: "1,300 mg", progress: 0.68, procent: "68")
        let vitamin11 = Vitamin(name: "B6-vitamin", value: "0,520 mg", progress: 0.15, procent: "15")
        let vitamin12 = Vitamin(name: "Pantothensyre", value: "0,783 mg", progress: 0.63, procent: "63")
        let vitamin13 = Vitamin(name: "Biotin", value: "6,3 ug", progress: 0.41, procent: "41")
        let vitamin14 = Vitamin(name: "Folat", value: "51 ug", progress: 1, procent: "100")
        let vitamin15 = Vitamin(name: "Frit folat", value: "26 ug", progress: 0.5, procent: "50")
        let vitamin16 = Vitamin(name: "B12-vitamin", value: "0 ug", progress: 0, procent: "0")
        let vitamin17 = Vitamin(name: "C-vitamin", value: "10,4 mg", progress: 0.91, procent: "91")
        let vitamin18 = Vitamin(name: "L-ascorbinsyre", value: "9,4 mg", progress: 0.34, procent: "34")
        let vitamin19 = Vitamin(name: "Beta-caroten", value: "8104 ug", progress: 0.59, procent: "59")
        
        tempVitamins.append(vitamin1)
        tempVitamins.append(vitamin2)
        tempVitamins.append(vitamin3)
        tempVitamins.append(vitamin4)
        tempVitamins.append(vitamin5)
        tempVitamins.append(vitamin6)
        tempVitamins.append(vitamin7)
        tempVitamins.append(vitamin8)
        tempVitamins.append(vitamin9)
        tempVitamins.append(vitamin10)
        tempVitamins.append(vitamin11)
        tempVitamins.append(vitamin12)
        tempVitamins.append(vitamin13)
        tempVitamins.append(vitamin14)
        tempVitamins.append(vitamin15)
        tempVitamins.append(vitamin16)
        tempVitamins.append(vitamin17)
        tempVitamins.append(vitamin18)
        tempVitamins.append(vitamin19)
        
        
        return tempVitamins
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vitamins.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vitamin = vitamins[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "vitaminCell") as! VitaminTableViewCell
        cell.setFields(vitamin: vitamin)
        // Configure the cell...

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
