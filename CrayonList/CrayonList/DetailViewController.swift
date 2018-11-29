import UIKit

class DetailViewController: UIViewController {
    var crayon: Crayon?
    
    @IBOutlet var topButton: UIButton!
    @IBOutlet var bottomButton: UIButton!
    @IBOutlet var topSwatchView: UIView!
    @IBOutlet var bottomSwatchView: UIView!
    @IBOutlet var detailView: UIImageView!
    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var detailSwatch: UIView!
    @IBOutlet var backgroundView: UIView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let crayon = crayon else { return}
        topSwatchView.backgroundColor = crayon.color
        bottomSwatchView.backgroundColor = crayon.color
        detailSwatch.backgroundColor = crayon.color
        backgroundView.backgroundColor = crayon.color
        detailView.image = crayon.image
        detailLabel.text = crayon.name
        
    


    }


}
