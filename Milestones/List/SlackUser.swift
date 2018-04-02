//
//  SlackUser.swift
//  Milestones
//
//  Created by Heather Mason on 2/24/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import Foundation

struct User: Codable {
    let name: String
    let id: String
}

struct SlackUser: Codable {
    let user: User
}
