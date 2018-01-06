//
//  GameCell.swift
//  UFLSample
//
//  Created by Andrew Simpson on 1/3/18.
//  Copyright © 2018 gravity LLC. All rights reserved.
//

import UIKit

class GameCell: UITableViewCell {

    @IBOutlet var homeTeam: UILabel!
    @IBOutlet var awayTeam: UILabel!
    @IBOutlet var time: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        homeTeam.sizeToFit()
        awayTeam.sizeToFit()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cellEnteredScreen() {
        alpha = 0.3
        UIView.animate(withDuration: 0.6, delay: 0, animations: {
            self.alpha = 1
        })

    }
}
