import UIKit
import Foundation

class TableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "cell"
    
    weak var delegate: TableViewCellDelegate?
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    @IBOutlet weak var colorBackground: UIView!
    
    
    
}
