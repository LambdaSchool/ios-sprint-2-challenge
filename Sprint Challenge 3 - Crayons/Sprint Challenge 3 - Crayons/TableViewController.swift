import UIKit

class TableViewController: UITableViewController {
    
    // Number of Sections, Number of Rows, Cell for Row
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Number of sections = number of alphabet letters used - received from model
        return CrayonHelper.shared.sectionCount
    
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of rows = number of colors in model
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Cast the cell as a TableViewCell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("Unable to dequeue proper cell") }
        
        // Customize the cell
        // Add the text to the label
        cell.nameLabel.text = CrayonHelper.shared.colorNameFor(indexPath: indexPath) // sectionNameFor(indexPath: indexPath)
        cell.colorPanelLeading.backgroundColor = CrayonHelper.shared.colorFor(indexPath: indexPath)
        cell.colorPanelTrailing.backgroundColor = CrayonHelper.shared.colorFor(indexPath: indexPath)
        
        // FIXME: UIImage needs to be added
        //cell.crayonImage.image =
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        // Create a label
        let label = UILabel()
        
        // Set label's text features
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        
        // Set text to section name by passing it an index path
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        
        // return the label
        return label
        
    }
    
}
