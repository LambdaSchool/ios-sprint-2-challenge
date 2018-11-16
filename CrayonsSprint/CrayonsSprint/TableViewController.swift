import UIKit

class TableViewController: UITableViewController {
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("unable to dequeue cell")}
        
        //I need to return the image and name
        let crayon = crayonDictionary
        cell.nameLabel.text = CrayonHelper.shared.crayonFor(indexPath: indexPath.row)
        
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        
        guard let destination = segue.destination as? DetailViewController else {return}
        
        //i need to set destination
       
    }
}

