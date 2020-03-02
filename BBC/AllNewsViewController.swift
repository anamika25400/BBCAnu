

import UIKit

class AllNewsViewController: UIViewController {
    
    
    @IBOutlet weak var BBCbtn: UIButton!
    
    
    @IBOutlet weak var CNNbtn: UIButton!
    
    
    @IBOutlet weak var Aljazeera: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BBCbtn.layer.cornerRadius = 15
        CNNbtn.layer.cornerRadius = 15
        Aljazeera.layer.cornerRadius = 15

        // Do any additional setup after loading the view.
    }
    

    @IBAction func BBCAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ShowViewController") as! ShowViewController
               self.navigationController?.pushViewController(vc, animated: true)
               
    }
    
    
    @IBAction func CNNAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "CNNViewController") as!CNNViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func AljazeeraAction(_ sender: Any) {
    
    let vc = storyboard?.instantiateViewController(identifier: "AljazeeraViewController") as! AljazeeraViewController
    self.navigationController?.pushViewController(vc, animated: true)
   }
}
