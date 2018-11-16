import UIKit
import Foundation

class CrayonTableViewCell: UITableViewCell {
    
    @IBOutlet var cellImage: UIImageView!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    weak var delegate: CrayonTableViewCellDelegate?
    
    @IBAction func toggle(_ sender: Any) {
        
        delegate?.tappedButton(on: self)
    }
    
}
