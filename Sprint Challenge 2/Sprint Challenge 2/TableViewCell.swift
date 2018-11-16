import UIKit

class TableViewCell: UITableViewCell {
    static let reuseIdentifier = "cell"
    
    @IBOutlet weak var leftSwatch: UIView!
    @IBOutlet weak var rightSwatch: UIView!
    @IBOutlet weak var crayonNameLabel: UILabel!
    @IBOutlet weak var crayonImageView: UIImageView!
}
