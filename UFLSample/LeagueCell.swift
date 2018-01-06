//
//  LeagueCell.swift
//  UFLSample
//
//  Created by Andrew Simpson on 1/5/18.
//  Copyright © 2018 gravity LLC. All rights reserved.
//

import UIKit

class LeagueCell: UICollectionViewCell {
    
    @IBOutlet var leagueImage: UIImageView!
    @IBOutlet var league: UILabel!
    
    var callback: ((String) -> Void)!
   
    func setup(onPush: @escaping ((String) -> Void) ) {
        leagueImage.contentMode = .scaleAspectFit
        callback = onPush
    }
    
    @IBAction func tapped(_ sender: Any) {
        callback(league.text!)
    }
}
