//
//  AllCommunitiesController.swift
//  VK Client
//
//  Created by Regina Galishanova on 26.12.2020.
//

import UIKit

//protocol CommunityDelegate: AnyObject {
//    func getMyCommunity(community: Community)
//}

class AllCommunitiesController: UITableViewController {
    
    var communities: [Community]!
    var networkService: NetworkService!
    
//    weak var communityDelegate: CommunityDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewWillAppear(_ animated: Bool) {
        networkService = NetworkService()
        communities = networkService.getCommunities()
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return communities.count //возвращаем кол-во ячеек в таблице равной кол-ву групп
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "communityCell", for: indexPath) as! AllCommunitiesCell
        cell.communityName.text = communities[indexPath.row].name
        cell.communityIcon.image = UIImage(named: communities[indexPath.row].image)

        return cell
    }
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        communityDelegate?.getMyCommunity(community: communities[indexPath.row])
//        
//        navigationController?.popViewController(animated: true)
//    }

}
