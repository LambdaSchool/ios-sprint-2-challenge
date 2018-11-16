//
//  TableViewCellDelegate.swift
//  Color List
//
//  Created by Ivan Caldwell on 11/16/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation


protocol TableViewCellDelegate: class {
    func tappedButton(on cell: TableViewCell)
}
