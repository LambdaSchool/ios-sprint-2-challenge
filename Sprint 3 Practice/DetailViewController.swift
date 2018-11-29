import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var largestBackground: UIView!
    
    @IBOutlet weak var secondLargestView: UIView!
    
    @IBOutlet weak var topSwatch: UIView!
    
    @IBOutlet weak var bottomSwatch: UIView!
    
    @IBOutlet weak var crayonDetailImageView: UIImageView!
    
    @IBOutlet weak var crayonNameDetail: UILabel!
    
    @IBOutlet weak var crayonSwatch: UIView!
    
    @IBOutlet weak var crayonColors: UILabel!
    
    @IBAction func likeButtonTop(_ sender: Any) {
    }
    
    @IBAction func likeButtonBottom(_ sender: Any) {
    }
    
    var crayon: Crayon?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { fatalError("No crayon found.")}
    }
}
