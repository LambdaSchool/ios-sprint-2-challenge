import UIKit

class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
     //   tableView.tintColor = .blue
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return ColorHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ColorHelper.shared.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell
            else { fatalError("Unable to dequeue proper cell") }
        
   
        cell.nameLabel.text = ColorHelper.shared.colorNameFor(indexPath: indexPath)
        cell.swatchView.backgroundColor = ColorHelper.shared.colorFor(indexPath: indexPath)
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        label.text = ColorHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return ColorHelper.shared.sectionTitles()
    }
}
