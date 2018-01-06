//
//  DateCell.swift
//  UFLSample
//
//  Created by Andrew Simpson on 1/4/18.
//  Copyright © 2018 gravity LLC. All rights reserved.
//

import UIKit

class DateCell: UITableViewCell {

    @IBOutlet var date: UILabel!
    @IBOutlet var homeGame: UILabel!
    @IBOutlet var awayGame: UILabel!
    @IBOutlet var time: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
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
        UIView.animate(withDuration: 0.5, delay: 0.2, animations: {
            self.date.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }, completion: { _ in
            UIView.animate(withDuration: 0.5, animations: {
                self.date.transform = CGAffineTransform.identity
            })
          })
    }
    
}
