
import UIKit

class DetailViewController: UIViewController {
    
    let thinker = "\u{1F914}"
    let heart = "\u{2764}"
    var crayon: Crayon?
    var (r, g, b): (CGFloat, CGFloat, CGFloat) = (0, 0, 0)
    
    @IBOutlet weak var crayonImageView: UIImageView!
    @IBOutlet weak var crayonNameLabel: UILabel!
    @IBOutlet weak var crayonColorView: UIView!
    @IBOutlet weak var crayonLiteralLabel: UILabel!
    @IBOutlet weak var topBufferView: UIView!
    @IBOutlet weak var bottomBufferView: UIView!
    @IBOutlet weak var topBufferButton: UIButton!
    @IBOutlet weak var bottomBufferButton: UIButton!
    @IBOutlet weak var inlaidView: UIView!
    @IBOutlet var detailView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else {return}
        
        inlaidView.backgroundColor = .white
        detailView.backgroundColor = crayon.color
        crayonImageView.image = crayon.image
        crayonNameLabel.text = crayon.name
        crayonColorView.backgroundColor = crayon.color
        topBufferView.backgroundColor = crayon.color
        bottomBufferView.backgroundColor = crayon.color
        crayonLiteralLabel.text = crayon.color.description
        
        updateLikeButton()

    }
    @IBAction func aBufferButtonClicked(_ sender: UIButton) {
        
        guard let crayon = crayon else {return}
        CrayonHelper.shared.changeIsLiked(for: crayon)
        updateLikeButton()
        
    }
    func updateLikeButton(){
        guard let crayon = crayon else {return}
        if(crayon.isLiked) {
            topBufferButton.setTitle(heart, for: .normal)
            bottomBufferButton.setTitle(heart, for: .normal)
        } else {
            topBufferButton.setTitle(thinker, for: .normal)
            bottomBufferButton.setTitle(thinker, for: .normal)
        }
    }

}
