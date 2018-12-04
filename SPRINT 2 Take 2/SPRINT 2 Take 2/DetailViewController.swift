import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var crayonImage: UIImageView!
    @IBOutlet weak var crayonName: UILabel!
    @IBOutlet weak var colorSwatch: UIView!
    
    @IBOutlet var likeButtons: [UIButton]!
    @IBAction func likeButtonsTapped(_ sender: Any) {
        CrayonHelper.shared.buttonWasPressed(likeButtons[0])
        CrayonHelper.shared.buttonWasPressed(likeButtons[1])
        crayon?.isLiked = likeButtons[0].isSelected
    }
    
    var crayon: Crayon?
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { return }

        
        crayonImage.image = crayon.image
        crayonName.text = crayon.name
        colorSwatch.backgroundColor = crayon.color
        likeButtons[0].backgroundColor = crayon.color
        likeButtons[0].isSelected = crayon.isLiked
        likeButtons[0].setTitle("🤔", for: .normal)
        likeButtons[1].setTitle("🤔", for: .normal)
        likeButtons[1].backgroundColor = crayon.color
        likeButtons[1].isSelected = crayon.isLiked
        
        view.backgroundColor = crayon.color
    }
    
    
}

