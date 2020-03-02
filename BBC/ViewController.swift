

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MyNBtn: UIButton!
    
    
    @IBOutlet weak var AllNBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MyNBtn.layer.cornerRadius = 15
        AllNBtn.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }
   

    @IBAction func MyNAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "NewsViewController") as! NewsViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    
    @IBAction func AllNAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "AllNewsViewController") as! AllNewsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
     
    
}

