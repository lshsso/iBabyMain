//
//  TableViewCell.swift
//  iBabyMain
//
//  Created by SSO on 19/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var imgView: UIImageView! //이미지 뷰
    @IBOutlet var weekLabel: UILabel! //촬영 주
    @IBOutlet var deleteBtn: UIButton! //삭제버튼
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
