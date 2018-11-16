import UIKit

class DetailViewController: UIViewController {

    var crayon: Crayon?
    
    @IBOutlet weak var detailBorderView: UIView!
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var colorBoxView: UIView!
    
    @IBOutlet weak var detailColorLabel: UILabel!
    @IBOutlet weak var colorInfoLabel: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeButton2: UIButton!
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        updateViews()
        
    }
    
    @IBAction func likeButtonTwoTapped(_ sender: Any) {
        updateViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { return }
        
        likeButton?.backgroundColor = crayon.color
        likeButton?.setTitle(crayon.buttonEmoji, for: .normal)
        likeButton2?.backgroundColor = crayon.color
        likeButton2?.setTitle(crayon.buttonEmoji, for: .normal)
        
        detailBorderView?.backgroundColor = crayon.color
        colorBoxView?.backgroundColor = crayon.color
    
        detailImageView?.image = crayon.image
        detailColorLabel?.text = crayon.name
        colorInfoLabel?.text = crayon.name
        updateViews()
        
    }
    
    func updateViews() {
        guard let crayon = crayon else { return }
        crayon.toggleIsLiked(crayon: crayon)
        print(crayon.isLiked)
        print(crayon.buttonEmoji)
    }
    
}

