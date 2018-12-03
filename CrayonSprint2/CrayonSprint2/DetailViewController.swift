import UIKit

class DetailViewController: UIViewController {
    
    var crayon: Crayon?
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var likeButton2: UIButton!
    @IBOutlet weak var crayonView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var swatchView: UIView!
    @IBOutlet weak var likeButton1: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
        
        guard let crayon = crayon else {return}
        backgroundView.backgroundColor = crayon.color
        whiteView.backgroundColor = .white
        crayonView.image = crayon.image
        nameLabel.text = crayon.name
        swatchView.backgroundColor = crayon.color
        
    }
    //action button
    @IBAction func didPressLike(_ sender: Any) {
        guard let crayon = crayon else {return}
        CrayonHelper.shared.tappedLikeButton(for: crayon)
        updateViews()
    }
    
    //defining what happens when i click what the button should do 
    func updateViews() {
        guard let crayon = crayon else {return}
        
        var newButtonTitle: String
        if crayon.isLiked {
            newButtonTitle = "😻"
        } else {
            newButtonTitle = "😾"
        }
        likeButton1.setTitle(newButtonTitle, for: .normal)
        likeButton2.setTitle(newButtonTitle, for: .normal)
    }
}
