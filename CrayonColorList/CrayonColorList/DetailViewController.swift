import UIKit
import Foundation

class DetailViewController: UIViewController {
    var crayon: Crayon?
    
    @IBOutlet weak var crayonColorImageView: UIImageView!
    @IBOutlet weak var swatchColorImageView: UILabel!
    @IBOutlet weak var colorNameLabel: UILabel!
    
    
    @IBOutlet var likeColorButtons: [UIButton]!
    
    @IBAction func tappedLikeButton(_ sender: Any) {
    }
    
    // TODO: stretch goals
    
    @IBOutlet weak var colorLabelFloat: UILabel!
    @IBOutlet weak var colorLabelHex: UILabel!
    @IBOutlet weak var colorLabelInt: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}
