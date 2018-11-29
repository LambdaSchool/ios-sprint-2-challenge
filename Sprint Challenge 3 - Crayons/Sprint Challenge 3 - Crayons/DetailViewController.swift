import UIKit

class DetailViewController: UIViewController {
    
    var crayon: Crayon?
    
    @IBOutlet weak var crayonImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var colorSwatch: UIView!
    
    @IBOutlet weak var outerView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Ensure we have a crayon to present
        guard let crayon = crayon else { return }
        
        // Populate the views
        nameLabel.text = crayon.name
        colorSwatch.backgroundColor = crayon.color
        crayonImage.image = crayon.image
        outerView.backgroundColor = crayon.color
    }
    
    
}
