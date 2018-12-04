import UIKit

class TableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "cell"
    
    @IBOutlet weak var leftSwatch: UIView!
    @IBOutlet weak var rightSwatch: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var crayonImage: UIImageView!
}
