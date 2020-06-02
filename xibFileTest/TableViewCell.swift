//
//  TableViewCell.swift
//  xibFileTest
//
//  Created by Yuki Shinohara on 2020/06/02.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var mainImageVIew: UIImageView!
    @IBOutlet var mainLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
