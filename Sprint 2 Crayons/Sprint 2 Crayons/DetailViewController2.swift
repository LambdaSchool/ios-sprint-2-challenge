import UIKit

class DetailViewController2: UIViewController {
    
    @IBOutlet var likeButtons: [UIButton]!
    @IBOutlet weak var crayonImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var colorSwatch: UIView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    //likeButtonTapped
    @IBAction func likeButtonTapped(_ sender: Any) {
        CrayonHelper.shared.buttonWasPressed(likeButtons[0])
        CrayonHelper.shared.buttonWasPressed(likeButtons[1])
        crayon?.isLiked = likeButtons[0].isSelected
    }
    var crayon: Crayon?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { return }
        
        crayonImage.image = crayon.image
        nameLabel.text = crayon.name
        colorSwatch.backgroundColor = crayon.color
        button1.backgroundColor = crayon.color
        button2.backgroundColor = crayon.color
        view.backgroundColor = crayon.color
    }
}




//CrayonHelper.shared.buttonWasPressed(likeButtons[0])
//CrayonHelper.shared.buttonWasPressed(likeButtons[1])
//crayon?.isLiked = likeButtons[0].isSelected
