import UIKit
import Foundation

class CrayonTableViewCell: UITableViewCell {
    
    @IBOutlet var cellImage: UIImageView!
    
    weak var delegate: CrayonTableViewCellDelegate?
    
    
}
