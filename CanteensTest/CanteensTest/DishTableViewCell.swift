//
//  DishTableViewCell.swift
//  CanteensTest
//
//  Created by Mathias Larsen on 01/11/2019.
//  Copyright © 2019 MadneZ. All rights reserved.
//

import UIKit

class DishTableViewCell: UITableViewCell {

    @IBOutlet weak var dishImage: UIImageView!
    
    @IBOutlet weak var dishLable: UILabel!
    
    @IBOutlet weak var ratingImage: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setFields(dish: Dish){
        dishImage.image = dish.img
        dishLable.text = dish.name
        ratingImage.image = dish.rating
    }

}
