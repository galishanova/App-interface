//
//  AllCommunitiesCell.swift
//  VK Client
//
//  Created by Regina Galishanova on 26.12.2020.
//

import UIKit

class AllCommunitiesCell: UITableViewCell {

    @IBOutlet weak var communityName: UILabel!
    @IBOutlet weak var communityIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
