import UIKit

class TableViewController: UITableViewController {
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else {fatalError("Unable to dequeueueu proper cell")}
        
        cell.nameLabel.text = CrayonHelper.shared.crayonNameFor(indexPath: indexPath)
        cell.swatchView1.backgroundColor = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        cell.swatchView2.backgroundColor = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
    
        
        return cell
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //we can change label even though its a constant because we are accessing properties of the class UILabel.
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .green
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
  
}

