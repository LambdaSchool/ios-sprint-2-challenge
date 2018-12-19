import UIKit

class TableViewCell: UITableViewCell {
    static let reusableIdentifier = "cell"
    @IBOutlet weak var crayonNameMain: UILabel!
    @IBOutlet weak var crayonImageMain: UIImageView!
    @IBOutlet weak var leadingSwatch: UIView!
    @IBOutlet weak var trailingSwatch: UIView!
    
}
