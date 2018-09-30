//
//  TableViewCell.swift
//  XMLParser
//
//  Created by Mac on 17.09.2018.
//  Copyright © 2018 FokinMC. All rights reserved.
//

import UIKit

enum CellState { //для устранения эффекта реюзабл селл
    case expanded
    case collapsed
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var descriptionLabel:UILabel! {
        didSet {
            descriptionLabel.numberOfLines = 3
        }
    }
    
    @IBOutlet weak var dateLabel:UILabel!

    var item: RSSItem! {
        didSet {
            titleLabel.text = item.title
            descriptionLabel.text = item.description
            dateLabel.text = item.pubDate
        }
    }
}
