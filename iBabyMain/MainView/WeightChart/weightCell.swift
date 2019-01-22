//
//  weightCell.swift
//  iBabyMain
//
//  Created by SSO on 10/01/2019.
//  Copyright © 2019 sso. All rights reserved.
//

import UIKit

class weightCell: UITableViewCell {
    @IBOutlet var weightLbl: UILabel!  // Kg
    @IBOutlet var regdate: UILabel!  // 등록 일자v
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
