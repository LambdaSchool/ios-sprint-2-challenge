import UIKit

class DetailViewController: UIViewController {
    // get the data from the model
    var crayon: Crayon?
    
    // setup the outlets and actions from the detail view
    // the views for border and background colors
    @IBOutlet weak var detailBorder: UIView!
     @IBOutlet weak var colorView: UIView!
    
    // for the crayon image and the swatchView
    @IBOutlet weak var crayonImage: UIImageView!
    @IBOutlet weak var swatchView: UIView!
    
    // for the labels
    
    @IBOutlet weak var colorName: UILabel!
    @IBOutlet weak var colorSpecs: UILabel!
    
    // outlets for the two like buttons
    
    @IBOutlet weak var likeTopButton: UIButton!
    @IBOutlet weak var likeBottomButton: UIButton!

    // actions for the twon like buttons
    
    
    @IBAction func likeTopButton(_ sender: Any) {
        
        
    }
    
    @IBAction func likeBottomButton(_ sender: Any) {
        
        
    }
    
    
    
}
