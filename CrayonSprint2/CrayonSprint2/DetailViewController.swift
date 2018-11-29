import UIKit

class DetailViewController: UIViewController {
    
    var crayon: Crayon?
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var bottomBarView: UIView!
    @IBOutlet weak var likeButton2: UIButton!
    @IBOutlet weak var crayonView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var swatchView: UIView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var topBarView: UIView!
    @IBOutlet weak var likeButton1: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else {return}
        backgroundView.backgroundColor = crayon.color
        whiteView.backgroundColor = .white
        bottomBarView.backgroundColor = crayon.color
        topBarView.backgroundColor = crayon.color
        crayonView.image = crayon.image
        nameLabel.text = crayon.name
        swatchView.backgroundColor = crayon.color
        
    }

    @IBAction func didPressLike(_ sender: Any) {
        guard let crayon = crayon else {return}
        CrayonHelper.shared.tappedLikeButton(for: crayon)
    }
    
    
}
