//
//  TableViewCell.swift
//  Color List
//
//  Created by Ivan Caldwell on 11/16/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    static let reuseIdentifier = "cell"

    @IBOutlet weak var tableViewCellLabel: UILabel!
    @IBOutlet weak var tableViewCellImage: UIImageView!
}
