import UIKit

class TableViewCell: UITableViewCell {
    static let reuseIdentifier = "cell"
    
    @IBOutlet var crayonLabel: UILabel!
    @IBOutlet var crayonView: UIImageView!
    @IBOutlet var leftSwatchView: UIView!
    @IBOutlet var rightSwatchView: UIView!
}
