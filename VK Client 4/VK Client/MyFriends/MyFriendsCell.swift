//
//  MyFriendsCell.swift
//  VK Client
//
//  Created by Regina Galishanova on 26.12.2020.
//

import UIKit

class MyFriendsCell: UITableViewCell {

    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var containerFriendPhoto: UIView!
    @IBOutlet  var friendPhotoProfile: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    override func layoutSubviews() {
        super.layoutSubviews()
        containerFriendPhoto.clipsToBounds = false
        containerFriendPhoto.layer.shadowColor = UIColor.black.cgColor
        containerFriendPhoto.layer.shadowOpacity = 0.5
        containerFriendPhoto.layer.shadowOffset = CGSize.zero
        containerFriendPhoto.layer.shadowRadius = 8
        containerFriendPhoto.layer.shadowPath = UIBezierPath(roundedRect: containerFriendPhoto.bounds, cornerRadius: 10).cgPath
        containerFriendPhoto.layer.cornerRadius = containerFriendPhoto.frame.width / 2

        friendPhotoProfile.clipsToBounds = true
        friendPhotoProfile.layer.cornerRadius = friendPhotoProfile.frame.width / 2

        containerFriendPhoto.addSubview(friendPhotoProfile)
    }

}
