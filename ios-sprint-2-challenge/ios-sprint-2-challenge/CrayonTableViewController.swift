import UIKit
import Foundation

class CrayonTableViewController: UITableViewController {
    
    let reuseIdentifier = "cell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? CrayonTableViewCell else { (fatalError("Could not cast")) }
        
        cell.cellImage.image = CrayonHelper.shared.rowCountFor(section: )
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        guard let destination = segue.destination as? CrayonDetailViewController else { return }
        
        let image = CrayonHelper.shared.sectionCount[indexPath.row]
        destination.image
    }
    
}
