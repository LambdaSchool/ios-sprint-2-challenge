//
//  TableViewController.swift
//  Color List
//
//  Created by Ivan Caldwell on 11/16/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(CrayonHelper.shared.rowCountFor(section: section))
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        print(CrayonHelper.shared.sectionCount)
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("Unable to dequeue cell of proper type")}
        //cell.tableViewCellImage.image = CrayonHelper.shared.image(for: CrayonHelper[indexPath.row])
        //var name =
        cell.tableViewCellLabel.text = CrayonHelper.shared.colorNameFor(indexPath: indexPath)
        cell.tableViewCellImage.image = UIImage(named: cell.tableViewCellLabel.text!)
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
