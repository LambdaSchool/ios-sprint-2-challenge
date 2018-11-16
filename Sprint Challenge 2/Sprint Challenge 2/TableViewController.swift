import UIKit

class TableViewController: UITableViewController {
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return ColorHelper.shared.sectionCount
//        // it's built-in, go you.
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return ColorHelper.shared.rowCountFor(section: section)
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell
//            else { fatalError("Unable to dequeue cell of proper type")}
//
//        cell.nameLabel.text = ColorHelper.shared.colorNameFor(indexPath: indexPath)
//        cell.swatchView.backgroundColor = ColorHelper.shared.colorFor(indexPath: indexPath)
//
//        return cell
//
//    }
//    // Just in case method - if you don't see any cells. Maybe add it to the Art Gallery.
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        tableView.reloadData()
//    }
//
//    // Added uniquely to the tableview, for the headers. A, B, C,. etc.
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let label = UILabel()
//        label.textAlignment = .center
//        label.backgroundColor = .lightGray
//        label.text = ColorHelper.shared.sectionNameFor(indexPath: IndexPath(row: 0, section: section))
//        return label
//    }
//
//    // section index titles
//    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
//        return ColorHelper.shared.sectionTitles()
//        // should provide the side index of jump to letter.
//    }
}
