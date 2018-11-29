import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailNameLabel: UILabel!
    
    var crayon: Crayon?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { return }
        
        detailImage.image = crayon.image
        detailNameLabel.text = crayon.name
        view.backgroundColor = crayon.color
        
    }
}

