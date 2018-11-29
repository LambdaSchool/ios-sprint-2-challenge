import UIKit

class TableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "cell"
    
    @IBOutlet weak var crayonImageView: UIImageView!
    
    @IBOutlet weak var crayonName: UILabel!
    
    @IBOutlet weak var rightSwatchView: UIView!
    
    @IBOutlet weak var leftSwatchView: UIView!
    
}
