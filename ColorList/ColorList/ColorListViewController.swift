//Sprint 2 Challenge
import UIKit

class ColorListViewController: UITableViewController {
    
    // number of sections, number of rows, and cell for row
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ColorSwatchCell.reuseIdentifier, for: indexPath) as? ColorSwatchCell
            else { fatalError("Unable to dequeue proper cell") }
        
        // Customize the cell
//        cell.colorName.text = CrayonHelper.shared.crayonFor(indexPath: indexPath)
//        cell.swatchView.backgroundColor = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let destination = segue.destination as? DetailViewController,
            let indexPath = tableView.indexPathForSelectedRow
            else { return }
        
        let person = Model.shared.person(at: indexPath.row)
        destination.person = person
        
        // Hopefully this will crash: DO NOT DO THIS!
        // destination.nameField.text = person.name
    }
    
    
    
}
