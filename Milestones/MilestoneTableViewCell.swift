//
//  MilestoneTableViewCell.swift
//  Milestones
//
//  Created by Heather Mason on 2/27/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit

class MilestoneTableViewCell: UITableViewCell {

    // Milestone description
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
        // Category
        let categoryLabel: UILabel = {
            let label = UILabel()
            return label
        }()
    
        // Target Date
        let targetDateLabel: UILabel = {
            let label = UILabel()
            return label
        }()
    //
    //    // User image
    //    let userImage: UIImage = {
    //
    //    }()
    //
    //    // User name
    //    let usernameLabel: UILabel = {
    //
    //    }()
    //
    //    // Find help button
    //    let helpButton: UIButton = {
    //
    //    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(categoryLabel)
        contentView.addSubview(targetDateLabel)
        
        installConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func installConstraints() {
        let marginGuide = contentView.layoutMarginsGuide
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.topAnchor.constraint(equalTo: marginGuide.topAnchor, constant: 8).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor, constant: 8).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor, constant: 8).isActive = true
        
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8).isActive = true
        categoryLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor, constant: 8).isActive = true
        categoryLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor, constant: 8).isActive = true
        
        targetDateLabel.translatesAutoresizingMaskIntoConstraints = false
        targetDateLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 8).isActive = true
        targetDateLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor, constant: 8).isActive = true
        targetDateLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor, constant: 8).isActive = true
        targetDateLabel.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor, constant: -8).isActive = true
    }
    
}
