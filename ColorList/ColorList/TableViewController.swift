//
//  TableViewController.swift
//  iOS4 - Sprint Challenge 2 (MBP) - ColorList
//
//  Created by Sameera Leola on 12/7/18.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - Table view data source
    
    //Set the number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    //Dequeue the cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Connect the cell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell
            else { fatalError("Unable to dequeue correct cell type") }
        
        
        //name: String, color: UIColor, image: UIImage?
        //Get the crayon color
        let crayonColor = CrayonHelper.shared.colorFor(indexPath: indexPath)
        //Get the crayon name
        let crayonName = CrayonHelper.shared.crayonNameFor(indexPath: indexPath)
        //Get the crayon image
        let crayonImage = CrayonHelper.shared.crayonImage(indexPath: indexPath)
        
        //Set the cell color, stackview background colors
        cell.backgroundColor = crayonColor
        cell.selectedBackgroundView?.backgroundColor = .white
        
        //Display the crayon name and image in the label and image view
        cell.crayonName.text = crayonName
        cell.crayonImage.image = crayonImage
        
        return cell
    }
    
    //Add the section header title
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let indexPath = IndexPath(row: 0, section: section)
        let sectionTitle = CrayonHelper.shared.sectionNameFor(indexPath: indexPath)
        let label = UILabel()
        
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        label.text = sectionTitle
        return label
    }
    
    //Perform the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destination = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        destination.theCrayon = crayon
    }
    
}
