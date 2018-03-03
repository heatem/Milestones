//
//  MilestonesViewController.swift
//  Milestones
//
//  Created by Heather Mason on 2/8/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit
import SlackKit

var usernameFromSlack = "usernameFromSlack"

class MilestonesViewController: UIViewController {
    // Need to decode milestones list into array of dictionaries, set the cell count to that array.count, and import the data into the cell
    //            let myStruct = try JSONDecoder().decode(Swifter.self, from: json)
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Raleway-Regular", size: 34)
        label.textColor = UIColor.mSalmon
        label.textAlignment = NSTextAlignment.center
        return label
    }()

    var tableView = UITableView(frame: .zero, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.mLightGray
        view.addSubview(usernameLabel)
        view.addSubview(tableView)
        usernameLabel.text = usernameFromSlack

        installConstraints()
        
        tableView.backgroundColor = UIColor.mLightGray
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MilestoneTableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func installConstraints() {
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        usernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
        usernameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        usernameLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 40).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension MilestonesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyMilestones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MilestoneTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MilestoneTableViewCell
        
        cell.descriptionLabel.text = dummyMilestones[indexPath.row]["milestone"]
        cell.categoryLabel.text = dummyMilestones[indexPath.row]["category"]
        cell.targetDateLabel.text = dummyMilestones[indexPath.row]["targetDate"]
    
        return cell
    }

}
