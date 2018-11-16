
import UIKit

class DetailViewController: UIViewController {
    
    let thinker = "\u{1F914}"
    let heart = "\u{2764}"
    var crayon: Crayon?
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
        reloadInputViews()
        
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
        
        if(crayon.isLiked) {
            bottomBufferButton.titleLabel?.text = heart
            topBufferButton.titleLabel?.text = heart
        } else {
        bottomBufferButton.titleLabel?.text = thinker
        topBufferButton.titleLabel?.text = thinker
        }
        
        
        
    }
    @IBAction func topBufferButtonClicked(_ sender: UIButton) {
        toggleLiked()
    }

    func toggleLiked () {
        
        guard let crayon = crayon else {return}
        if(crayon.isLiked) {
            crayon.isLiked = false
            bottomBufferButton.titleLabel?.text = thinker
            topBufferButton.titleLabel?.text = thinker
        } else {
            crayon.isLiked = true
            bottomBufferButton.titleLabel?.text = heart
            topBufferButton.titleLabel?.text = heart
        }
        viewDidLoad()
    }
    
    
    
    
}
