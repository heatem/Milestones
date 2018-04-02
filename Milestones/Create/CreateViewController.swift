//
//  CreateViewController.swift
//  Milestones
//
//  Created by Heather Mason on 3/25/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    // Add textfield to enter/edit goal
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.clipsToBounds = true
        label.text = "Milestone:"
        return label
    }()
    
    let descriptionField: UITextView = {
        let textview = UITextView()
        textview.keyboardType = UIKeyboardType.default
        textview.font = UIFont.systemFont(ofSize: 18)
        textview.backgroundColor = .white
        textview.layer.cornerRadius = 10
        textview.layer.shadowOffset = CGSize(width: 0, height: 0)
        textview.layer.shadowOpacity = 0.3
        textview.layer.shadowRadius = 6
        return textview
    }()
    
    // Add category selector with personal and professional options
    // Use a view with a search bar as delegate
    
    
    // Add due date
    let datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = UIDatePickerMode.date
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        var selectedDate = dateFormatter.string(from: picker.date)
        print(selectedDate)
//        picker.frame = CGRect(x: 10, y: 50, width: self.view.frame.width, height: 200)
        picker.timeZone = NSTimeZone.local
        
        return picker
    }()
    // Add button to save
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.mLightGray
        view.addSubview(descriptionLabel)
        view.addSubview(descriptionField)
        view.addSubview(datePicker)
        
        installConstraints()
        
    }

    func installConstraints() {
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 24).isActive = true
        
        descriptionField.translatesAutoresizingMaskIntoConstraints = false
        descriptionField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        descriptionField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
        descriptionField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 12).isActive = true
        descriptionField.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        datePicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
        datePicker.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
//        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
//        usernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
//        usernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
//        usernameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
//        usernameLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
