
import UIKit

class TableViewCell: UITableViewCell {
    static let reuseIdentifier = "cell"
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var leftViewBuffer: UIView!
    @IBOutlet weak var rightViewBuffer: UIView!
    @IBOutlet weak var swatchView: UIImageView!
    
}
