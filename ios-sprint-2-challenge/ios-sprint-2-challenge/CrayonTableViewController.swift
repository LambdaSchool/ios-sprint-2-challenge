import UIKit
import Foundation

class CrayonTableViewController: UITableViewController {
    
    let reuseIdentifier = "cell"
    
    var crayons: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...122 {
            guard let image = UIImage(named: "Image\(i)") else { fatalError( "Could not load image") }
            crayons.append(image)
            
        }
    }
    
//    func tappedLikeButton(on cell: CrayonTableViewCell) {
//        guard let indexPath = tableView?.indexPath(for: cell)
//            else { fatalError("Cell does not exist") }
//
////        crayons[indexPath.row].isLiked.toggle()
//
//        var newButtonTitle: String
//        if crayons[indexPath.row].isLiked {
//            newButtonTitle = "🤢"
//        } else {
//            newButtonTitle = "😍"
//        }
//
//
//        //Didn't have time to finish this.
          //Throwing error on the code we were already given in the CrayonModel and won't run?? 
//
//    }
//
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? CrayonTableViewCell else { (fatalError("Could not dequeue cell")) }
        cell.colorLabel.text = CrayonHelper.shared.crayonFor(indexPath: indexPath).name
        cell.cellImage.image = CrayonHelper.shared.crayonFor(indexPath: indexPath).image
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .blue
        label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
        return label
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return CrayonHelper.shared.sectionTitles()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        guard let destination = segue.destination as? CrayonDetailViewController else { return }
        
        let crayon = CrayonHelper.shared.crayonFor(indexPath: indexPath)
        destination.crayon = crayon
    }
    
    
    
}

