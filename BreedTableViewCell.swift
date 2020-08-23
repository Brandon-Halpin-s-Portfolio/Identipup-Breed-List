//
//  BreedTableViewCell.swift
//  Identipup
//
//  Created by Courant Guest on 11/29/19.
//  Copyright © 2019 Nahckjoon Kim. All rights reserved.
//

import UIKit

class BreedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    var myIndex: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
