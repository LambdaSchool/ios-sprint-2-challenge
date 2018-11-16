import UIKit
import Foundation

class CrayonDetailViewController: UIViewController {
    var crayon: Crayon?

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dislikeButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var swatchView: UIImageView!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { return }
        imageView.image = crayon.image
        swatchView.image = crayon.image
        
    
    
    }
}
