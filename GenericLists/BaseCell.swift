//
//  BaseCell.swift
//  GenericLists
//
//  Created by Sami Ali on 7/1/18.
//  Copyright © 2018 Sami Ali. All rights reserved.
//

import UIKit

class BaseCell<U>: UITableViewCell {
    var item: U!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
