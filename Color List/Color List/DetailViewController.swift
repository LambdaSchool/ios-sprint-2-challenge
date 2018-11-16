import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    @IBOutlet weak var swatchView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
       // guard let character = Character else { return }
        
        cell.swatchView.backgroundColor = CrayonHelper.shared.colorFor(indexPath: indexPath)
    }
}

