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
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Raleway-Regular", size: 34)
        label.textColor = UIColor.mSalmon
        label.textAlignment = NSTextAlignment.center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.mLightGray
        view.addSubview(usernameLabel)
        
        usernameLabel.text = usernameFromSlack

        installConstraints()
        // Do any additional setup after loading the view.
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
    }

}
