import UIKit

class DetailViewController: UIViewController {
    
    var crayon: Crayon
    
    @IBOutlet weak var crayonImageView: UIImageView!
    
    @IBOutlet weak var topSwatchView: UIView!
    
    @IBOutlet weak var bottomSwatchView: UIView!
    
    @IBOutlet weak var crayonName: UILabel!
    
    @IBOutlet weak var squareSwatchView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        crayonImageView.image = crayon.image
        topSwatchView.backgroundColor = crayon.color
        bottomSwatchView.backgroundColor = crayon.color
        squareSwatchView.backgroundColor = crayon.color
        crayonName.text = crayon.name
    }
    
}
