//
//  MyCommunitiesController.swift
//  VK Client
//
//  Created by Regina Galishanova on 26.12.2020.
//

import UIKit

class MyCommunitiesController: UITableViewController {
    
    var communities = [String] ()
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return communities.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCommunitiesCell", for: indexPath) as! MyCommunitiesCell
        let community = communities[indexPath.row]
        cell.myCommunity.text = community

        return cell
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
            communities.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
    }
     
    @IBAction func addCommunity(segue: UIStoryboardSegue) {
        if segue.identifier == "addCommunity" {
            guard let allCommunitiesController = segue.source as? AllCommunitiesController else { return }
            
            if let indexPath = allCommunitiesController.tableView.indexPathForSelectedRow {
                let community = allCommunitiesController.communities[indexPath.row]
                if !communities.contains(community) {
                communities.append(community)
                tableView.reloadData()
                }
            }
        }
    }



}
