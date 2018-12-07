import UIKit

class TableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "cell"

    @IBOutlet weak var swatchView01: UIView!
    @IBOutlet weak var swatchView02: UIView!
    @IBOutlet weak var crayonView: UIImageView!
    @IBOutlet weak var crayonLabel: UILabel!

}
