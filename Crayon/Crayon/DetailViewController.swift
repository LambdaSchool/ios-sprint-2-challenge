
import UIKit

class DetailViewController: UIViewController {
    
    var crayon: Crayon?
    @IBOutlet weak var crayonImageView: UIImageView!
    @IBOutlet weak var crayonNameLabel: UILabel!
    @IBOutlet weak var crayonColorView: UIView!
    @IBOutlet weak var crayonLiteralLabel: UILabel!
    @IBOutlet weak var topBufferView: UIView!
    @IBOutlet weak var buttomBufferView: UIView!
    @IBOutlet var detailView: UIView!
    @IBOutlet weak var topBufferLabel: UILabel!
    @IBOutlet weak var bottomBufferLabel: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else {return}
        
        detailView.backgroundColor = crayon.color
        crayonNameLabel.text = crayon.name
        crayonName
        
        cohortField.text = person.cohort
        
        
    }
    
    @IBAction func save(_ sender: Any) {
        guard let person = person else {return}
        guard let name = nameField.text, !name.isEmpty else {return}
        person.name = name
        print(person.name)
        person.cohort = cohortField.text ?? ""
        print(person.cohort)
        
        navigationController?.popViewController(animated: true)
        
        
    }
    
    
}
