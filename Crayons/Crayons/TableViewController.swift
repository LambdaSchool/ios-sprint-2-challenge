import UIKit

class TableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else{fatalError("Failed to DQ cell. TableViewController")}
        
        cell.crayonImageView.image = CrayonHelper.shared.crayonFor(indexPath: indexPath).image
        cell.rightSwatchView.backgroundColor = CrayonHelper.shared.crayonFor(indexPath: indexPath).color
        cell.leftSwatchView.backgroundColor = CrayonHelper.shared.crayonFor(indexPath: indexPath).color
        cell.crayonName.text = CrayonHelper.shared.crayonFor(indexPath: indexPath).name
        
        return cell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        destination.crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
    }
    
}
