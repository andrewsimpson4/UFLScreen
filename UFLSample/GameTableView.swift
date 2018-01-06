//
//  GameTableView.swift
//  
//
//  Created by Andrew Simpson on 1/3/18.
//

import UIKit
import RealmSwift

class GameTableView: UITableView, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    let realm = try! Realm()
    var tabledata: Results<match>!
     var headerAction: ((String) -> Void)!
    func setup(headerAction: @escaping ((String) -> Void)) {
        self.delegate = self
        self.dataSource = self
        
        let nib = UINib(nibName: "GameCell", bundle: nil)
        self.register(nib, forCellReuseIdentifier: "GameCell")
        
        let nib2 = UINib(nibName: "DateCell", bundle: nil)
        self.register(nib2, forCellReuseIdentifier: "DateCell")
        
        let nib3 = UINib(nibName: "BufferCell", bundle: nil)
        self.register(nib3, forCellReuseIdentifier: "BufferCell")
        
        self.estimatedRowHeight = 62.0
        self.rowHeight = UITableViewAutomaticDimension
        
        self.headerAction = headerAction
    }
    
    func updateTableData(key: String) {
        if (key == "world") {
            tabledata = realm.objects(match.self).sorted(byKeyPath: "date")
        }else {
            tabledata = realm.objects(match.self).filter("league == '" + key + "'")
        }
        self.reloadData()
    }
    
    func sortAndUpdateTableData(type: String) {
        tabledata = realm.objects(match.self).sorted(byKeyPath: type)
        self.reloadData()
    }
    func filter(type: String) {
        tabledata = realm.objects(match.self).filter(type)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tabledata.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row >= 2) {
            if (tabledata[indexPath.row - 1].date == tabledata[indexPath.row - 2].date) {
                let cell: GameCell = self.dequeueReusableCell(withIdentifier: "GameCell") as! GameCell!
                cell.homeTeam.text = tabledata[indexPath.row - 1].homeTeam
                cell.awayTeam.text = tabledata[indexPath.row - 1].awayTeam
                cell.time.text = tabledata[indexPath.row - 1].gameTime
                return cell
            }else {
                let cell: DateCell = self.dequeueReusableCell(withIdentifier: "DateCell") as! DateCell!
                cell.homeGame.text = tabledata[indexPath.row - 1].homeTeam
                cell.awayGame.text = tabledata[indexPath.row - 1].awayTeam
                cell.time.text = tabledata[indexPath.row - 1].gameTime
                cell.date.text = "June " + String(tabledata[indexPath.row - 1].date)
                return cell
            }
        }else if (indexPath.row == 1) {
            let cell: DateCell = self.dequeueReusableCell(withIdentifier: "DateCell") as! DateCell!
            cell.homeGame.text = tabledata[indexPath.row - 1].homeTeam
            cell.awayGame.text = tabledata[indexPath.row - 1].awayTeam
            cell.time.text = tabledata[indexPath.row - 1].gameTime
            cell.date.text = "June " + String(tabledata[indexPath.row - 1].date)
            return cell
        }else {
            let cell: BufferCell = self.dequeueReusableCell(withIdentifier: "BufferCell") as! BufferCell!
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if (Mirror(reflecting: cell).subjectType == GameCell.self) {
            let gameCell = cell as! GameCell
            gameCell.cellEnteredScreen()
        }else if (Mirror(reflecting: cell).subjectType == DateCell.self) {
            let gameCell = cell as! DateCell
            gameCell.cellEnteredScreen()
        }
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        headerAction("hide")
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        headerAction("show")
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
    
}
