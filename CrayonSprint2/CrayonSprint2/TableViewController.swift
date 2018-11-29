import UIKit

class TableViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
//tableview functions
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else { fatalError("unable to dequeue cell")}
        
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
        cell.colorLabel.text = crayon.name
        cell.crayonView.image = crayon.image
        cell.leftView.backgroundColor = crayon.color
        cell.rightView.backgroundColor = crayon.color
        
        return cell
    }
    
    //creating section headers
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        
        return label
    }
}

