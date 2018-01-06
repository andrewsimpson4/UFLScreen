//
//  File.swift
//  UFLSample
//
//  Created by Andrew Simpson on 1/3/18.
//  Copyright © 2018 gravity LLC. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift
//import Realm

let GameData = [
    "league":
        ["champions":
            ["games":
                [ ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 1, "time": "16:30"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 2, "time": "16:00"],
                  ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 2, "time": "16:30"],
                  ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 2, "time": "17:30"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 3, "time": "16:00"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 4, "time": "16:00"],
                  ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 4, "time": "17:30"],
                ]
            ],
         "dutch":
            ["games":
                [
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 1, "time": "16:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 1, "time": "16:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 5, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 5, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 6, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 7, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 8, "time": "17:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 8, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 8, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 9, "time": "17:30"],
                ]
            ],
         "england":
            ["games":
                [
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 1, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 1, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 2, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 3, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 4, "time": "17:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 5, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 5, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 5, "time": "17:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 5, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 5, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 5, "time": "17:30"],
                ]
            ],
         "europa":
            ["games":
                [ ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 6, "time": "16:30"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 7, "time": "16:00"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 7, "time": "16:00"],
                  ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 7, "time": "16:30"],
                  ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 8, "time": "17:30"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 8, "time": "16:00"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 9, "time": "16:00"],
                  ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 10, "time": "17:30"],
                ]
            ],
         "france":
            ["games":
                [
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 2, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 3, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 3, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 3, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 4, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 4, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 5, "time": "17:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 6, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 7, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 8, "time": "17:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 9, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 10, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 10, "time": "17:30"],
                ]
            ],
         "italy":
            ["games":
                [
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 1, "time": "16:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 2, "time": "16:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 2, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 2, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 6, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 6, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 6, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 8, "time": "17:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 10, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 10, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 10, "time": "17:30"],
                ]
            ],
         "mls":
            ["games":
                [
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 2, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 2, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 3, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 3, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 4, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 4, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 5, "time": "17:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 5, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 6, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 6, "time": "17:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 7, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 7, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 8, "time": "17:30"],
                ]
            ],
         "saudi":
            ["games":
                [ ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 1, "time": "16:30"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 2, "time": "16:00"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 3, "time": "16:00"],
                  ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 3, "time": "16:30"],
                  ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 3, "time": "17:30"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 4, "time": "16:00"],
                  ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 4, "time": "16:00"],
                  ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 4, "time": "17:30"],
                ]
            ],
         "spain":
            ["games":
                [
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 1, "time": "16:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 1, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 2, "time": "16:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 2, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 3, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 3, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 5, "time": "17:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 5, "time": "16:30"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 6, "time": "17:30"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 6, "time": "16:00"],
                    ["homeTeam" : "Southhamton", "awayTeam" : "Man U.", "date": 6, "time": "16:00"],
                    ["homeTeam" : "Man U.", "awayTeam" : "Southhamton", "date": 6, "time": "17:30"],
                ]
            ],
        ]
]



class match: Object {
    @objc dynamic var homeTeam: String = ""
    @objc dynamic var awayTeam: String = ""
    @objc dynamic var league: String = ""
    @objc dynamic var date: Int = -1
    @objc dynamic var gameTime: String = ""
    
    func add(homeTeam: String, awayTeam: String, league: String, date: Int, gameTime: String) {
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        self.league = league
        self.date = date
        self.gameTime = gameTime
    }
}



