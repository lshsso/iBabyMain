//
//  WeightTableViewCell.swift
//  iBabyMain
//
//  Created by SSO on 29/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit


protocol WeightCellDelegate {
    func didRequestDelete(_ cell: WeightTableViewCell )
    func didRequestComplete (_ cell: WeightTableViewCell)
}

class WeightTableViewCell: UITableViewCell {
    
    @IBOutlet var regdate: UILabel!  // 등록 일자v
    @IBOutlet var WeightLabel: UILabel!
    var delegate: WeightCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func deleteWeight(_ sender: Any) {
        if let delegateObject = self.delegate {
            delegateObject.didRequestDelete(self)
        }
        func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            
            // Configure the view for the selected state
        }
        
    }
}
