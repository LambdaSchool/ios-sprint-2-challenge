//
//  TableViewCell.swift
//  Color List Version 3
//
//  Created by Ivan Caldwell on 11/29/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    static let reuseIdentifer = "cell"
    @IBOutlet weak var tableViewCellView: UIView!
    @IBOutlet weak var tableViewCellLabel: UILabel!
    @IBOutlet weak var tableViewCellImage: UIImageView!
    @IBOutlet weak var tableVieCellBackgroundColor: UIView!
    
}
