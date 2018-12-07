import UIKit

class ViewController: UIViewController {
    
    var crayon: Crayon?
    
     var heartEmoji: String = "❤️"
     var thinkEmoji: String = "🤔"
     var thinkOrHeart: String = ""

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let crayon = crayon else { return }
        viewImage.image = crayon.image
        swatchVIew01.backgroundColor = crayon.color
        swatchView02.backgroundColor = crayon.color
        swatchView03.backgroundColor = crayon.color
        swatchView04.backgroundColor = crayon.color
        colorLabel.text = crayon.name
        
        
        
    }
    
    @IBOutlet weak var swatchVIew01: UIView!
    @IBOutlet weak var swatchView02: UIView!
    @IBOutlet weak var swatchView03: UIView!
    @IBOutlet weak var swatchView04: UIView!
    @IBOutlet weak var likeButton01: UIButton!
    @IBOutlet weak var likeButton02: UIButton!
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var colorLabel: UILabel!
    
    
    @IBAction func likeAction01(_ sender: Any) {
        crayon?.isLiked.toggle()
        thinkOrHeart.self = (crayon?.isLiked)! ? heartEmoji : thinkEmoji
        likeButton01.setTitle(heartEmoji, for: .normal)
        likeButton02.setTitle(thinkOrHeart, for: .normal)
    }
    
    @IBAction func likeAction02(_ sender: Any) {
        crayon?.isLiked.toggle()
        thinkOrHeart.self = (crayon?.isLiked)! ? heartEmoji : thinkEmoji
        likeButton01.setTitle(heartEmoji, for: .normal)
        likeButton02.setTitle(thinkOrHeart, for: .normal)
    }
    














   

}

