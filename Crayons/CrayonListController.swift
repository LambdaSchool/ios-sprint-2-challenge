//
//  CrayonListController.swift
//  Crayons
//
//  Created by Lotanna Igwe-Odunze on 3/5/19.
//  Copyright © 2019 Lotanna Igwe-Odunze. All rights reserved.
//

import UIKit

class CrayonListController: UITableViewController {
    
    let crayola = CrayonHelper.shared
    
    override func viewDidLoad() {
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return crayola.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return crayola.sectionTitles()[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayola.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crynCell", for: indexPath) as! CrayonCellController
        
        let cellCrayon = crayola.crayonFor(indexPath: indexPath)
        
        cell.titleLabel.text = cellCrayon.name
        cell.crayonView.image = cellCrayon.image
        cell.contentView.backgroundColor = cellCrayon.color
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewSegue" {
            let detailVC = segue.destination as! CrayonDetailController
            detailVC.currentCrayon = crayola.crayonFor(indexPath: tableView.indexPathForSelectedRow!)
        }
    }
}

