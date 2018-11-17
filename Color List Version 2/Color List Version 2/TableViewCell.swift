//
//  TableViewCell.swift
//  Color List Version 2
//
//  Created by Ivan Caldwell on 11/17/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    static let reuseIdentifier = "cell"
    
    @IBOutlet weak var tableViewCellLabel: UILabel!
    @IBOutlet weak var tableViewCellImage: UIImageView!
    @IBOutlet weak var tableViewCellColor: UIView!
    
}
