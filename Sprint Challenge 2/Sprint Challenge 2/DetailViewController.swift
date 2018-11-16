import UIKit

class DetailViewController: UIViewController {
    
    // review
    // var crayon = Crayon?
    
    
    @IBOutlet var DetailViewControllerBackground: UIView!
    
    @IBOutlet weak var TopSwatch: UIView!
    
    @IBOutlet weak var MiddleSwatch: UIView!
    
    @IBOutlet weak var BottomSwatch: UIView!

    @IBAction func LikeButtonTop(_ sender: Any) {
    }
    
    @IBAction func LikeButtonBottom(_ sender: Any) {
    }
    
    override func viewWillAppear(_ animated:Bool) {
        super.viewWillAppear(animated)
        
        guard let topSwatch = TopSwatch else { return }
        guard let middleSwatch = MiddleSwatch else { return }
        guard let bottomSwatch = BottomSwatch else { return }
        
        topSwatch.backgroundColor = CrayonHelper.shared.crayonColorFor(indexPath: indexPath)
        middleSwatch.backgroundColor = CrayonHelper.shared.crayonColorFor(indexPath: indexPath)
        bottomSwatch.backgroundColor = CrayonHelper.shared.crayonColorFor(indexPath: indexPath)
        
     //review
        // guard let crayon = crayon else { return }
        
    }
    
}
