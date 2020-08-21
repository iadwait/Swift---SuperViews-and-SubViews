//
//  TableViewCell.swift
//  SuperViews and SubViews
//
//  Created by Adwait Barkale on 21/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    //@IBOutlet weak var lbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
