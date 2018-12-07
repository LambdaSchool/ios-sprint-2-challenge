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
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section) )
        return label
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return CrayonHelper.shared.sectionTitles()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ViewController,
            let indexPath = tableView.indexPathForSelectedRow else { return }
            destinationVC.crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
    }
}
