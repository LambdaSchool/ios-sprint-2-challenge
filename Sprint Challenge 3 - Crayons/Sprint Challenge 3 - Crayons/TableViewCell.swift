import UIKit

class TableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "cell"
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var crayonImage: UIImageView!
    
    @IBOutlet weak var colorPanelLeading: UIView!
    
    @IBOutlet weak var colorPanelTrailing: UIView!
    
}
