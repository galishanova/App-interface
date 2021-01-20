//
//  NewsViewController.swift
//  VK Client
//
//  Created by Regina Galishanova on 17.01.2021.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet var table: UITableView!
    var models = [VKPost]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
        
        table.delegate = self
        table.dataSource = self
        
        models.append(VKPost(uswerName: "Jenner Kylie", userImageName: "jenner", postImageName: "jenner4", numberOfLikes: "6.4M", numberOfShare: "2.6K", numberOfComments: "2.3K", numberOfViews: "9.4M"))
        models.append(VKPost(uswerName: "McGregor Conor", userImageName: "conor", postImageName: "conor4", numberOfLikes: "2.6M", numberOfShare: "46K", numberOfComments: "863K", numberOfViews: "7.2M"))
        models.append(VKPost(uswerName: "Apple", userImageName: "apple", postImageName: "iphone12", numberOfLikes: "12K", numberOfShare: "2K", numberOfComments: "4K", numberOfViews: "24K"))
        models.append(VKPost(uswerName: "Travel Russia", userImageName: "rus trav", postImageName: "rus trav 2", numberOfLikes: "425", numberOfShare: "43", numberOfComments: "24", numberOfViews: "2K"))
        models.append(VKPost(uswerName: "Grande Ariana", userImageName: "grande", postImageName: "grande2", numberOfLikes: "2.6M", numberOfShare: "947K", numberOfComments: "376K", numberOfViews: "4M"))
        models.append(VKPost(uswerName: "Sport", userImageName: "sport", postImageName: "sport2", numberOfLikes: "836", numberOfShare: "56", numberOfComments: "359", numberOfViews: "32K"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return UITableView.automaticDimension
    }
    
}

struct VKPost {
    
    let uswerName: String
    let userImageName: String
    let postImageName: String
    let numberOfLikes: String
    let numberOfShare: String
    let numberOfComments: String
    let numberOfViews: String
}
