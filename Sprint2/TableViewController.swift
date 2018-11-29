import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var crayonView: UIImageView!
    

    var crayons: [Crayon] = []
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }

    let reuseIdentifier = "cell"
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? TableViewCell
            else { fatalError("U killed puppies") }
        
            cell.nameLabel.text = Crayon.init(name: <#T##String#>, color: <#T##UIColor#>, image: <#T##UIImage?#>)
            cell.swatchView.image = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        return cell
    }
    

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return CrayonHelper.shared.sectionTitles()
    }
}
