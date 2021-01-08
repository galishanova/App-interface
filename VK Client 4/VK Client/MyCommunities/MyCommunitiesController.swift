//
//  MyCommunitiesController.swift
//  VK Client
//
//  Created by Regina Galishanova on 26.12.2020.
//

import UIKit

class MyCommunitiesController: UITableViewController  {
    
    var communities = [Community] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return communities.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCommunitiesCell", for: indexPath) as! MyCommunitiesCell
        let community = communities[indexPath.row]
        cell.myCommunity.text = community.name
        cell.myCommunityIcon.image = UIImage(named: communities[indexPath.row].image)
        return cell
    }
    //удаление сообщества из избранного
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
            communities.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
    }
     //добавление сообщества
    @IBAction func addCommunity(segue: UIStoryboardSegue) {
        if segue.identifier == "addCommunity" {
            guard let allCommunitiesController = segue.source as? AllCommunitiesController,
                  let indexPath = allCommunitiesController.tableView.indexPathForSelectedRow else { return }
            let community = allCommunitiesController.communities[indexPath.row]
            if !communities.contains(community) {
                communities.append(community)
                tableView.reloadData()
                }
        }
    }
    

}



