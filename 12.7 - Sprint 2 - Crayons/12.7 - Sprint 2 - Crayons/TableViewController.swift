import UIKit

class TableViewController: UITableViewController {

    var colors: [Crayon] = []
    
    // MARK: - Table view data source

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return CrayonHelper.shared.rowCountFor(section: section)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("Could not load cell") }
        cell.crayonLabel.text = CrayonHelper.shared.colorNameFor
        cell.swatchView01 = CrayonHelper.shared.
        cell.swatchView02 =
 
        
        return cell
    }
}
