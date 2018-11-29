import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else {fatalError("unable to dequeue cell")}
        
        cell.colorNameLabel.text = CrayonHelper.shared.crayonFor(indexPath: indexPath).name
        cell.crayonImageView.image = CrayonHelper.shared.crayonFor(indexPath: indexPath).image
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        self.tableView.backgroundColor = .black
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return CrayonHelper.shared.sectionTitles()
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    // set border color
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 0
        cell.layer.borderWidth = 10
        cell.layer.shadowOffset = CGSize(width: -1, height: 1)
        let borderColor = CrayonHelper.shared.crayonFor(indexPath: indexPath).color
        cell.layer.borderColor = borderColor.cgColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        guard let destination = segue.destination as? DetailViewController else {return}
        
        destination.crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        destination.crayon?.isLiked = CrayonHelper.shared.crayonFor(indexPath: indexPath).isLiked
        
        
    }
}
