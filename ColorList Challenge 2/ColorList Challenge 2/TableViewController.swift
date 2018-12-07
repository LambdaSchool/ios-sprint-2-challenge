//
//  TableViewController.swift
//  ColorList Challenge 2
//
//  Created by Vijay Das on 12/7/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return CrayonHelper.shared.sectionCount
    }
    
    
    // section header - implemet the header here
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .black
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return CrayonHelper.shared.rowCountFor(section: section)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("Could not dequeue cell")}
        
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
        cell.backgroundColor = crayon.color
        cell.nameLabel.text = crayon.name
        cell.crayonView.image = crayon.image
        cell.cellBorder.backgroundColor = .white
        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
        destination.crayon = crayon
        
    }
}
