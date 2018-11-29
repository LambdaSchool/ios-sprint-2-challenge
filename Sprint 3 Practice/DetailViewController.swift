import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var largestBackground: UIView!
    
    @IBOutlet weak var secondLargestView: UIView!
    
    @IBOutlet weak var topSwatch: UIView!
    
    @IBOutlet weak var bottomSwatch: UIView!
    
    @IBOutlet weak var crayonDetailImageView: UIImageView!
    
    @IBOutlet weak var crayonNameDetail: UILabel!
    
    @IBOutlet weak var crayonSwatch: UIView!
    
    // Omitted from final project, currently set as hiden. Name is Crayon Colors.
    @IBOutlet weak var crayonColors: UILabel!
    
    @IBAction func likeButtonTop(_ sender: Any) {
    }
    
    @IBAction func likeButtonBottom(_ sender: Any) {
    }
    
    var crayon: Crayon?

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { fatalError("No crayon found.")}
        
        
    // The detail view includes the crayon image, its name, and a swatch on a white background. Behind the white background, the main view is tinted with the crayon color.
        
        // Crayon Colors (is there a way to condense this?)
        largestBackground.backgroundColor = crayon.color
        topSwatch.backgroundColor = crayon.color
        crayonSwatch.backgroundColor = crayon.color
        bottomSwatch.backgroundColor = crayon.color
        // crayonColors.text = "..."
        
        // Everything else
        secondLargestView.backgroundColor = .white
        crayonDetailImageView.image = crayon.image
        crayonNameDetail.text = crayon.name
        
    }
}
