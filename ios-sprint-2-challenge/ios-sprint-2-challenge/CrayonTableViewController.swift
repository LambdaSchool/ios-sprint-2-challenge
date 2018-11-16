import UIKit
import Foundation

class CrayonTableViewController: UITableViewController {
    
    let reuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? CrayonTableViewCell else { (fatalError("Could not dequeue cell")) }
        cell.colorLabel.text = CrayonHelper.shared.crayonFor(indexPath: indexPath).name
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .blue
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return CrayonHelper.shared.sectionTitles()
    }
        
    
    
}

