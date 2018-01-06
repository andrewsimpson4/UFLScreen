//
//  LeagueCollectionView.swift
//  
//
//  Created by Andrew Simpson on 1/5/18.
//

import UIKit

class LeagueCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {

    let imageData = ["world","champions", "dutch", "england","europa","france","italy","mls","saudi","spain"]
    var callback: ((String) -> Void)!
    func setup(onPush: @escaping ((String) -> Void)) {
        delegate = self
        dataSource = self
        callback = onPush
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.dequeueReusableCell(withReuseIdentifier: "LeagueCell", for: indexPath) as! LeagueCell
        cell.setup(onPush: callback)
        cell.leagueImage.image = UIImage(named: imageData[indexPath.row])
        cell.league.text = imageData[indexPath.row]
        return cell
    }
    
    func changeHeader(action: String) {
        if (action == "hide") { hide() }else { show() }
    }
    
    func hide() {
        UIView.animate(withDuration: 0.25, delay: 0, animations: {
            self.transform = CGAffineTransform(translationX: 0, y: -self.frame.size.height)
        })
    }
    
    func show() {
        UIView.animate(withDuration: 0.25, delay: 1, animations: {
            self.transform = CGAffineTransform.identity
        })
    }

}
