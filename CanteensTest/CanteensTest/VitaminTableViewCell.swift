//
//  VitaminTableViewCell.swift
//  CanteensTest
//
//  Created by Mathias Larsen on 02/11/2019.
//  Copyright © 2019 MadneZ. All rights reserved.
//

import UIKit

class VitaminTableViewCell: UITableViewCell {

    
    
    
    @IBOutlet weak var nameLable: UILabel!
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var valueLable: UILabel!
    
    @IBOutlet weak var procentLable: UILabel!
    
    
    func setFields(vitamin: Vitamin){
        nameLable.text = vitamin.name
        valueLable.text = vitamin.value
        progressBar.progress = vitamin.progress
        progressBar.trackTintColor = UIColor.lightGray
        procentLable.text = vitamin.procent
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
