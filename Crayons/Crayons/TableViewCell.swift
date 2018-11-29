//
//  TableViewCell.swift
//  Crayons
//
//  Created by Stuart on 11/29/18.
//  Copyright © 2018 Stuart. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let shared = DetailViewController()
    
    let cellReuseIdentifier = "cell"
    
    @IBOutlet var crayonImageView: UIImageView!
    
    @IBOutlet var crayonNameLabel: UILabel!
    
    @IBOutlet var lSwatchView: UIView!
    
    @IBOutlet var rSwatchView: UIView!
    
}
