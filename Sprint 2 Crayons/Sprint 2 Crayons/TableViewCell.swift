import UIKit

class TableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "cell"

    @IBOutlet weak var swatchView1: UIView!
    
    @IBOutlet weak var swatchView2: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var crayonImage: UIImageView!
}
