
import UIKit

struct TableData  {
    var title : String!
    var subTitle : String!
    
}
class ViewController: UIViewController {

    var newData = [TableData]()
 
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
      
        newData = [TableData.init(title: "Mahatma Gandhi", subTitle: "Mohandas Karamchand Gandhi was an Indian lawyer, anti-colonial nationalist, and political ethicist, who employed nonviolent resistance to lead the successful campaign for India's independence from British Rule, and in turn inspire movements for civil rights and freedom across the world"),
        TableData.init(title: "Ashoka", subTitle: "Ashoka, sometimes Ashoka the Great, was an Indian emperor of the Maurya Dynasty, Chandragupta Maurya, Ashoka promoted the spread of Buddhism across ancient Asia")]
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
   
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        let data = newData[indexPath.row]
        cell.titleLabel.text = data.title
        cell.subTitleLabel.text = data.subTitle
        return cell
    }
}
