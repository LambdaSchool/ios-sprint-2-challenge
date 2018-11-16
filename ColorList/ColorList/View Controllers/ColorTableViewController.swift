import UIKit

class ColorTableViewController: UITableViewController {

    // MARK: - Table view Section Setup
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .lightGray
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         guard let cell = tableView.dequeueReusableCell(withIdentifier: ColorTableViewCell.reuseIdentifier, for: indexPath) as? ColorTableViewCell else { fatalError("Error: Could not dequeue table view cell") }
        
            let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
            cell.colorBorderView.backgroundColor = crayon.color
            cell.colorNameLabel.text = crayon.name
            cell.crayoneImageView.image = crayon.image
    
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destination = segue.destination as? DetailViewController else { return }
        
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
    
        destination.crayon = crayon
    }
    
}
