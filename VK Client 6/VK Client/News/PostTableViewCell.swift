//
//  PostsTableViewCell.swift
//  VK Client
//
//  Created by Regina Galishanova on 17.01.2021.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet var likesLabel: UILabel!
    @IBOutlet weak var likeButtonPost: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var shareLabel: UILabel!
    @IBOutlet weak var numberOfViewPost: UILabel!
    
    
    
    static let identifier = "PostTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "PostTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(with model: VKPost) {
        
        self.userNameLabel.text = model.uswerName
        self.userImageView.image = UIImage(named: model.userImageName)
        self.postImageView.image = UIImage(named: model.postImageName)
        self.likesLabel.text = model.numberOfLikes
        self.commentLabel.text = model.numberOfComments
        self.shareLabel.text = model.numberOfShare
        self.numberOfViewPost.text = model.numberOfViews

    }
    override func layoutSubviews() {
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
        userImageView.layer.borderColor = UIColor.white.cgColor
        userImageView.layer.borderWidth = 1
        
    }
    
}
