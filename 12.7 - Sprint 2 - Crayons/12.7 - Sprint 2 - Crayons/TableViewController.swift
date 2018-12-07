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
        cell.crayonLabel.text = CrayonHelper.shared.colorNameFor(indexPath: indexPath)
        cell.swatchView01.backgroundColor = CrayonHelper.shared.colorFor(indexPath: indexPath)
        cell.swatchView02.backgroundColor = CrayonHelper.shared.colorFor(indexPath: indexPath)
        let image = UIImage(named: cell.crayonLabel.text!)
        cell.imageView?.image = image
        
        return cell
    }
}
