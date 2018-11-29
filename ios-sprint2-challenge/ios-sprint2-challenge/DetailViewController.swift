import UIKit
import Foundation

class DetailViewController: UIViewController {
    
    var crayon: Crayon?
    
    @IBOutlet weak var likeButton1: UIButton!
    
    @IBOutlet weak var likeButton2: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var detailView: UIView!
    
    @IBOutlet weak var crayonImage: UIImageView!
    
    @IBOutlet weak var swatchView: UIView!
    
    @IBAction func tapButton1(_ sender: Any) {
    }
    
    @IBAction func tapButton2(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { return }
        
        
        detailView?.backgroundColor = .white
        likeButton1?.backgroundColor = crayon.color
        likeButton2?.backgroundColor = crayon.color
        label?.text = crayon.name
        swatchView.backgroundColor = crayon.color
        crayonImage.image = crayon.image
        
        
    }
    

    
    

    
    
    
    
    
}
