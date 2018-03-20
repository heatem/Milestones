//
//  MilestoneTableViewCell.swift
//  Milestones
//
//  Created by Heather Mason on 2/27/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit

class MilestoneTableViewCell: UITableViewCell {

    let milestoneContainer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.mLightGray
        view.layer.cornerRadius = 5
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOpacity = 0.3
        view.layer.shadowRadius = 6
        return view
    }()
    
    // Milestone description
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    // Category
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.darkGray
        return label
    }()
    
    // Target Date
    let targetDateLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.darkGray
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        backgroundColor = UIColor.mLightGray
        
        addSubview(milestoneContainer)
        milestoneContainer.addSubview(descriptionLabel)
        milestoneContainer.addSubview(categoryLabel)
        milestoneContainer.addSubview(targetDateLabel)
        
        installConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func installConstraints() {
        
        milestoneContainer.translatesAutoresizingMaskIntoConstraints = false
        milestoneContainer.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        milestoneContainer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        milestoneContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        milestoneContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.topAnchor.constraint(equalTo: milestoneContainer.topAnchor, constant: 8).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: milestoneContainer.leadingAnchor, constant: 8).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: milestoneContainer.trailingAnchor, constant: 8).isActive = true
        
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8).isActive = true
        categoryLabel.leadingAnchor.constraint(equalTo: milestoneContainer.leadingAnchor, constant: 8).isActive = true
        categoryLabel.trailingAnchor.constraint(equalTo: milestoneContainer.trailingAnchor, constant: 8).isActive = true
        
        targetDateLabel.translatesAutoresizingMaskIntoConstraints = false
        targetDateLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 8).isActive = true
        targetDateLabel.leadingAnchor.constraint(equalTo: milestoneContainer.leadingAnchor, constant: 8).isActive = true
        targetDateLabel.trailingAnchor.constraint(equalTo: milestoneContainer.trailingAnchor, constant: 8).isActive = true
        targetDateLabel.bottomAnchor.constraint(equalTo: milestoneContainer.bottomAnchor, constant: -8).isActive = true
    }
    
}
