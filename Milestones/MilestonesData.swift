//
//  MilestonesData.swift
//  Milestones
//
//  Created by Heather Mason on 2/27/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import Foundation

var dummyMilestones = [["milestone": "Get a job", "category":"Career", "targetDate":"5/12/2018"],["milestone":"set goals", "category":"personal", "targetDate":"12/12/2018"]]

var milestonesList = """
[
  {
    "milestone": "Get an iOS job",
    "category": "Career",
    "targetDate": "5/12/2018"
  },
  {
    "milestone": "Set goals",
    "category": "Personal Development",
    "targetDate": "8/17/2018"
  }
]
"""

struct MilestonesData: Codable {
    let milestone: String
    let category: String
    let targetDate: String
}
