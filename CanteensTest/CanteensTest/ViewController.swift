//
//  ViewController.swift
//  CanteensTest
//
//  Created by Mathias Larsen on 01/11/2019.
//  Copyright © 2019 MadneZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var vitamins: [Vitamin] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            vitamins = createArray()
            
        }
        
        func createArray()->[Vitamin]{
            var tempVitamins: [Vitamin] = []
            
            let vitamin1 = Vitamin(name: "A-vitamin", value: "756 RE", progress: 0.79, procent: "79% of recommended daily intake")
            let vitamin2 = Vitamin(name: "Retinol", value: "57 ug", progress: 0.44, procent: "44% of recommended daily intake")
            let vitamin3 = Vitamin(name: "D-vitamin", value: "33 ug", progress: 21, procent: "21% of recommended daily intake")
            let vitamin4 = Vitamin(name: "D3-vitamin", value: "0 ug", progress: 0.0, procent: "0% of recommended daily intake")
            let vitamin5 = Vitamin(name: "E-vitamin", value: "0,75 a-TE", progress: 0.38, procent: "38% of recommended daily intake")
            let vitamin6 = Vitamin(name: "alfa-tokoferol", value: "0,880 mg", progress: 0.77, procent: "77% of recommended daily intake")
            let vitamin7 = Vitamin(name: "K1-vitamin", value: "23 ug", progress: 0.90, procent: "90% of recommended daily intake")
            let vitamin8 = Vitamin(name: "B1-vitamin", value: "0,09 mg", progress: 0.71, procent: "71% of recommended daily intake")
            let vitamin9 = Vitamin(name: "B2-vitamin", value: "0,054 mg", progress: 0.43, procent: "43% of recommended daily intake")
            let vitamin10 = Vitamin(name: "Niacin", value: "1,300 mg", progress: 0.68, procent: "68% of recommended daily intake")
            let vitamin11 = Vitamin(name: "B6-vitamin", value: "0,520 mg", progress: 0.15, procent: "15% of recommended daily intake")
            let vitamin12 = Vitamin(name: "Pantothensyre", value: "0,783 mg", progress: 0.63, procent: "63% of recommended daily intake")
            let vitamin13 = Vitamin(name: "Biotin", value: "6,3 ug", progress: 0.41, procent: "41% of recommended daily intake")
            let vitamin14 = Vitamin(name: "Folat", value: "51 ug", progress: 1, procent: "100% of recommended daily intake")
            let vitamin15 = Vitamin(name: "Frit folat", value: "26 ug", progress: 0.5, procent: "50% of recommended daily intake")
            let vitamin16 = Vitamin(name: "B12-vitamin", value: "0 ug", progress: 0, procent: "0% of recommended daily intake")
            let vitamin17 = Vitamin(name: "C-vitamin", value: "10,4 mg", progress: 0.91, procent: "91% of recommended daily intake")
            let vitamin18 = Vitamin(name: "L-ascorbinsyre", value: "9,4 mg", progress: 0.34, procent: "34% of recommended daily intake")
            let vitamin19 = Vitamin(name: "Beta-caroten", value: "8104 ug", progress: 0.59, procent: "59% of recommended daily intake")
            
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
        
    }

    extension ViewController: UITableViewDataSource, UITableViewDelegate{
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return vitamins.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let vitamin = vitamins[indexPath.row]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "vitaminCell") as! VitaminTableViewCell
            
            cell.setFields(vitamin: vitamin)
            
            return cell
        }
    }
