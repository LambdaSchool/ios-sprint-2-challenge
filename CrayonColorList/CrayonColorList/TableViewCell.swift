import UIKit
import Foundation

class TableViewCell: UITableViewCell {
    static let reuseIdentifier = "cell"
    
    @IBOutlet weak var colorNameLabel: UILabel!
    @IBOutlet weak var crayonImageView: UIImageView!
}
