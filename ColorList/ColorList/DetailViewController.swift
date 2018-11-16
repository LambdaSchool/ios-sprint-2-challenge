import UIKit

class DetailViewController: UIViewController {
    var crayon: Crayon?
    
    @IBOutlet var likeButtons: [UIButton]!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var swatchView: UIImageView!
    @IBOutlet weak var colorView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else {fatalError("valid crayon not found")}
        colorLabel.text = crayon.name
        colorView.image = crayon.image
        swatchView.backgroundColor = crayon.color
    }
    
}
