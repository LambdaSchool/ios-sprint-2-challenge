//
//  TableViewController.swift
//  Crayons
//
//  Created by Stuart on 11/29/18.
//  Copyright © 2018 Stuart. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.shared.cellReuseIdentifier, for: indexPath) as? TableViewCell else {fatalError("Unable to dequeu cell")}
        
        
        
        //let contrastingColor = Crayon.init(name: name, color: color, image: image).contrastingColor()
        
        cell.crayonImageView.image = CrayonHelper.shared.crayonFor(indexPath: indexPath).image
        cell.crayonNameLabel.text = CrayonHelper.shared.crayonFor(indexPath: indexPath).name
        cell.rSwatchView.backgroundColor = CrayonHelper.shared.crayonFor(indexPath: indexPath).color
        cell.lSwatchView.backgroundColor = CrayonHelper.shared.crayonFor(indexPath: indexPath).color
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        destination.crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .lightGray
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    
}
