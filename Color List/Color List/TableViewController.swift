import UIKit

class TableViewController: UITableViewController {

        override func numberOfSections(in tableView: UITableView) -> Int {
            return CrayonHelper.shared.sectionCount
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return CrayonHelper.shared.rowCountFor(section: section)
        }
    // override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     //   <#code#>
   // }
    
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath)
                as? TableViewCell
                else { fatalError("Unable to dequeue cell of proper type")}
            
            
            cell.colorLabel.text = CrayonHelper.shared.sectionNameFor(indexPath: indexPath)
           
       
            return cell
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
        }
        
        override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let label = UILabel()
            label.textAlignment = .center
            label.backgroundColor = .lightGray
            label.text = CrayonHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
            return label
        }

    
    }


