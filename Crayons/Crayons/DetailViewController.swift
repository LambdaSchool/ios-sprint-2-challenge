import UIKit

class DetailViewController: UIViewController {
    
    static let shared = DetailViewController()
    
    var crayon: Crayon?
    
    @IBOutlet weak var crayonImageView: UIImageView!
    
    @IBOutlet weak var topSwatchView: UIView!
    
    @IBOutlet weak var bottomSwatchView: UIView!
    
    @IBOutlet weak var crayonName: UILabel!
    
    @IBOutlet weak var squareSwatchView: UIView!
    
    @IBOutlet weak var botLikeButton: UIButton!
    
    @IBOutlet weak var topLikeButton: UIButton!
    
    
    
    
    @IBAction func likeButton(_ sender: Any) {
        if topLikeButton.currentTitle == "Liked" {
        topLikeButton.setTitle("Not liked", for: .normal)
        botLikeButton.setTitle("Not Liked", for: .normal)
            CrayonHelper.shared.isUnliked(colorName: crayon?.name ?? "")
        } else {
            topLikeButton.setTitle("Liked", for: .normal)
            botLikeButton.setTitle("Liked", for: .normal)
            CrayonHelper.shared.isLiked(colorName: crayon?.name ?? "")
        }
    }
    
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        if CrayonHelper.shared.crayonArr.contains(crayon?.name ?? "") {
            topLikeButton.setTitle("Liked", for: .normal)
            botLikeButton.setTitle("Liked", for: .normal)
        } else {
            topLikeButton.setTitle("Not Liked", for: .normal)
            botLikeButton.setTitle("Not Liked", for: .normal)
        }
        crayonImageView.image = crayon?.image
        topSwatchView.backgroundColor = crayon?.color
        bottomSwatchView.backgroundColor = crayon?.color
        squareSwatchView.backgroundColor = crayon?.color
        crayonName.text = crayon?.name
        view.backgroundColor = crayon?.color
    }
    
}
