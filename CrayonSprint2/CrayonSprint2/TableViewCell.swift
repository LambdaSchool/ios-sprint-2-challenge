import UIKit

class TableViewCell: UITableViewCell {

   static let reuseIdentifier = "crayonCell"

    @IBOutlet weak var leftView: UIView!
    
    @IBOutlet weak var rightView: UIView!
    
    @IBOutlet weak var crayonView: UIImageView!
    
    @IBOutlet weak var colorLabel: UILabel!
    
}
