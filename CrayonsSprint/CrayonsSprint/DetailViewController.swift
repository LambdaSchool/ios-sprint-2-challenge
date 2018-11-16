import UIKit

class DetailViewController: UITableViewController {
    
    weak var delegate: CrayonTableViewCellDelegate?
    
    @IBOutlet weak var crayonView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var swatchView: UIView!
    
    @IBOutlet weak var specLabel: UILabel!
    
    @IBAction func likeButton(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
}
