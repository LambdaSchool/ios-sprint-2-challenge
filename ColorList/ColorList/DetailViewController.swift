import UIKit

class DetailViewController: UIViewController {
    var crayon: Crayon?
    
    @IBOutlet var likeButtons: [UIButton]!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var swatchView: UIImageView!
    @IBOutlet weak var colorView: UIImageView!
    
    
    @IBAction func tappedLikeButtons(_ sender: UIButton) {
        CrayonHelper.shared.buttonPressed(likeButtons[0])
        CrayonHelper.shared.buttonPressed(likeButtons[1])
        crayon?.isLiked = likeButtons[0].isSelected
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else {fatalError("valid crayon not found")}
        colorLabel.text = crayon.name
        colorView.image = crayon.image
        swatchView.backgroundColor = crayon.color
        likeButtons[0].backgroundColor = crayon.color
        likeButtons[1].backgroundColor = crayon.color
        likeButtons[0].isSelected = crayon.isLiked
        likeButtons[1].isSelected = crayon.isLiked
    }
    
}
