//
//  SwitchCell.swift
//  Yelp
//
//  Created by Pratyush on 2/14/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class SwitchCell: UITableViewCell {

  @IBOutlet weak var onSwitch: NSLayoutConstraint!
  @IBOutlet weak var switchLabel: NSLayoutConstraint!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  

}
