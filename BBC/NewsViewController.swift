

import UIKit
import AlamofireImage

class NewsViewController: UIViewController
{
var modelData = [MyModel]()

var titleName = [String]()
var imageName = [String]()

    

    @IBOutlet weak var newstable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //newstable.rowHeight = 217
        loadData()
        newstable.dataSource = self
        newstable.delegate = self
    }
    
  func loadData() {
         let url = URL(string: "https://jsonplaceholder.typicode.com/photos")
         URLSession.shared.dataTask(with: url!){(data, response, error) in
             if error == nil {
                 do{
                     let myData = try!JSONDecoder().decode([MyModel].self, from: data!)
                     DispatchQueue.main.async {
                         for item in myData{
                             self.titleName.append(item.title)
                             self.imageName.append(item.url)
                             //print(self.imageName)
                         }
                         self.newstable.reloadData()
                     }
                 }catch{
                     print(":( Nothing Found")
                 }
             }
         }.resume()
     }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 450
    }
}


extension NewsViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newstable.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
               if let imgUrl = imageName[indexPath.row] as? String {
                   if let url = URL(string: imgUrl){
                       cell.imageCell.af_setImage(withURL: url)
                   }
               }
               
               cell.labelCell.text = titleName[indexPath.row]
        return cell
    }
    
    
}
