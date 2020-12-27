//
//  MyCommunitiesCell.swift
//  VK Client
//
//  Created by Regina Galishanova on 26.12.2020.
//

import UIKit

class MyCommunitiesCell: UITableViewCell {

    @IBOutlet weak var myCommunity: UILabel!
    @IBOutlet weak var myCommunityIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
