import UIKit

class TableViewCell: UITableViewCell {
    static let reuseIdentifier = "colorCell"
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var crayonView: UIImageView!
    
}
