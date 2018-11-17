//
//  TableViewController.swift
//  Color List Version 2
//
//  Created by Ivan Caldwell on 11/17/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class TableVieWController: UITableViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = CrayonHelper.shared.sectionNameFor(section)
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.black
        label.textAlignment = .center
        return label
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("Unable to dequeue cell of proper type")}

        let crayon: Crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        cell.tableViewCellLabel.text = CrayonHelper.shared.colorNameFor(indexPath: indexPath)
        cell.tableViewCellImage.image = UIImage(named: cell.tableViewCellLabel.text!)
        let color = crayon.getCrayonColor()
        cell.tableViewCellColor.backgroundColor = color
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        destination.crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }}
