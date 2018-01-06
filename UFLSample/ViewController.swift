//
//  ViewController.swift
//  UFLSample
//
//  Created by Andrew Simpson on 1/3/18.
//  Copyright © 2018 gravity LLC. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet var leagueCollectionView: LeagueCollectionView!
    @IBOutlet var tableView: GameTableView!
    let realm = try! Realm()
    var tabledata: Results<match>!
    let imageData = ["world","champions", "dutch", "england","europa","france","italy","mls","saudi","spain"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        try! realm.write { realm.deleteAll() }
        populateRealmFromStaticData()
        tableView.setup(headerAction: leagueCollectionView.changeHeader(action:))
        tableView.updateTableData(key: "world")
        
        leagueCollectionView.setup(onPush: tableView.updateTableData(key:))
    }
    
    func populateRealmFromStaticData() {
        
        for (league,data) in GameData["league"]! {
            for game in data["games"]! {
                let newMatch = match()
                newMatch.add(homeTeam: game["homeTeam"] as! String, awayTeam: game["awayTeam"] as! String, league: league, date: game["date"] as! Int, gameTime: game["time"] as! String)
                try! realm.write { realm.add(newMatch) }
             }
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

