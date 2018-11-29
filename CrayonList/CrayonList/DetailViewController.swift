import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var topButton: UIButton!
    @IBOutlet var bottomButton: UIButton!
    @IBOutlet var topSwatchView: UIView!
    @IBOutlet var bottomSwatchView: UIView!
    @IBOutlet var detailView: UIView!
    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var detailSwatch: UIView!
    @IBOutlet var backgroundView: UIView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let crayon = crayon else {
            return
        }
        
        
    }


}


