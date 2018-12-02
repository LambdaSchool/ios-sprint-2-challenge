import UIKit

class TableViewController: UITableViewController {
    
    // number of sections
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    // section header text and display attributes
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    // number of rows
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
        
    }
    
    // cellForRowAt
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("Could not dequeue cell")}
   
        // code to setup the tableview cell
        
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
        cell.backgroundColor = crayon.color
        cell.nameLabel.text = crayon.name
        cell.crayonView.image = crayon.image
//        cell.cellBorder.backgroundColor = .white
        
        
 return cell
    }
    
    // prepare for seque
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // identify the cell to go to detail view
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
        destination.crayon = crayon
        
               
    }
    
    
    
    
}
