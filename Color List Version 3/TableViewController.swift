//
//  TableViewController.swift
//  Color List Version 3
//
//  Created by Ivan Caldwell on 11/29/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = CrayonHelper.shared.sectionNameFor(section)
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.black
        label.textAlignment = .center
        return label
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifer, for: indexPath) as? TableViewCell else { fatalError ("Fail at cellForRowAt") }
        
        let crayon: Crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        cell.tableViewCellLabel.text = crayon.name
        cell.tableViewCellImage.image = UIImage(named: crayon.name)
        cell.tableVieCellBackgroundColor.backgroundColor = crayon.getCrayonColor()
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        destination.crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
