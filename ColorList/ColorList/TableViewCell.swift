//
//  TableViewController.swift
//  iOS4 - Sprint Challenge 2 (MBP) - ColorList
//
//  Created by Sameera Leola on 12/7/18.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //Set cell reuse identifier
    static let reuseIdentifier: String = "cell"

    @IBOutlet weak var stackBackgoundView: UIView!
    
    @IBOutlet weak var crayonName: UILabel!
    @IBOutlet weak var crayonImage: UIImageView!
}
