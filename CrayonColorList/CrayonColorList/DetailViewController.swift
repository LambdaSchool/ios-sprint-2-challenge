import UIKit
import Foundation

class DetailViewController: UIViewController {
    var crayon: Crayon?
    
    @IBOutlet weak var crayonColorImageView: UIImageView!
    @IBOutlet weak var swatchColorImageView: UIImageView!
    @IBOutlet weak var colorNameLabel: UILabel!
    
    
    @IBOutlet var likeColorButtons: [UIButton]!
    
    @IBAction func tappedLikeButton(_ sender: UIButton) {
        CrayonHelper.shared.buttonPressed(likeColorButtons[0])
        CrayonHelper.shared.buttonPressed(likeColorButtons[1])
        crayon?.isLiked = likeColorButtons[0].isSelected
    }
    
    // TODO: stretch goals
    
    @IBOutlet weak var colorLabelFloat: UILabel!
    @IBOutlet weak var colorLabelHex: UILabel!
    @IBOutlet weak var colorLabelInt: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else {fatalError("no valid crayon found")}
        colorNameLabel.text = crayon.name
        crayonColorImageView.image = crayon.image
        swatchColorImageView.backgroundColor = crayon.color
        likeColorButtons[0].backgroundColor = crayon.color
        likeColorButtons[1].backgroundColor = crayon.color
        likeColorButtons[0].isSelected = crayon.isLiked
        likeColorButtons[1].isSelected = crayon.isLiked
        
        view.backgroundColor = crayon.color
    }
}
