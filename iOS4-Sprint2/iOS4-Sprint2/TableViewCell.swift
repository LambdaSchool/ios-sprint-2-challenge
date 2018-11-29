import UIKit

class TableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "cell"
  
    // need nameLabel and crayonView outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var crayonView: UIImageView!
    
    // outlet for the view that will make the border
    @IBOutlet weak var cellBorder: UIView!
}
