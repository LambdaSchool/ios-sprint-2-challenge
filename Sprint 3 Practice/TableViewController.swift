import UIKit

class TableViewController: UITableViewController {
    
    // MVP - You will include section headers grouped by the first letter of each crayon.
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    // MVP - Cells display color names and crayon images. Each cell is bordered with supporting color swatchs on its edges.
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reusableIdentifier, for: indexPath) as? TableViewCell else { fatalError("Unable to dequeue proper cell")}
        
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        
        cell.crayonNameMain.text = crayon.name
        cell.crayonImageMain.image = crayon.image
        cell.leadingSwatch.backgroundColor = crayon.color
        cell.trailingSwatch.backgroundColor = crayon.color
        
        return cell
    }
    
    
}
