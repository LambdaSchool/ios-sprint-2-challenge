import UIKit

class TableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "cell"
  
    // need nameLabel and crayonView outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var crayonView: UIImageView!
    @IBOutlet weak var cellBorder: UIView!
}
