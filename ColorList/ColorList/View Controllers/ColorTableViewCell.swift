import UIKit

class ColorTableViewCell: UITableViewCell {

    @IBOutlet weak var colorBorderView: UIView!
    @IBOutlet weak var colorNameLabel: UILabel!
    @IBOutlet weak var crayoneImageView: UIImageView!
    
    static let reuseIdentifier = "ColorCell"
}
