//import UIKit
//
//class DetailViewController: UIViewController {
//
//    @IBOutlet weak var detailImage: UIImageView!
//    @IBOutlet weak var detailNameLabel: UILabel!
//    @IBOutlet weak var detailSwatch1: UIView!
//    @IBOutlet weak var detailSwatch2: UIView!
//    @IBOutlet weak var detailSmallSwatch: UIView!
//
//    @IBOutlet weak var button: UIButton!
//
//    @IBOutlet var likeButtons: [UIButton]!
//
//    @IBAction func tappedLikeButton(_ sender: Any) {
//        CrayonHelper.shared.buttonWasPressed(likeButtons[0])
//        CrayonHelper.shared.buttonWasPressed(likeButtons[1])
//        crayon?.isLiked = likeButtons[0].isSelected
//
//    }
//
//
//    var crayon: Crayon? //If this wasn't
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        guard let crayon = crayon else { return }
//
//        detailImage.image = crayon.image
//        detailNameLabel.text = crayon.name
//        view.backgroundColor = crayon.color
//        detailSwatch1.backgroundColor = crayon.color
//        detailSwatch2.backgroundColor = crayon.color
//        detailSmallSwatch.backgroundColor = crayon.color
//        butt
//
//    }
//}
//
//
//

