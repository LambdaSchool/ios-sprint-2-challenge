import UIKit

class TableViewController: UITableViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .black
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    
    // segue in progress
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow
            else { return }
        guard let destination = segue.destination as? DetailViewController
            else { return }
        
        
       // destination.crayon = CrayonHelper.shared.crayon(forIndex indexPath.row)

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell
            else { fatalError("Unable to dequeue cell of proper type")}
        
        cell.crayonNameLabel.text = CrayonHelper.shared.crayonNameFor(indexPath: indexPath)
        cell.leftSwatch.backgroundColor = CrayonHelper.shared.crayonColorFor(indexPath: indexPath)
        cell.rightSwatch.backgroundColor = CrayonHelper.shared.crayonColorFor(indexPath: indexPath)
        // cell.crayonImageView =
        
        return cell
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        // the just in case method, in case we don't see any crayons.
    }
}
