
import UIKit
import WebKit

class CNNViewController: UIViewController ,WKNavigationDelegate{
    
    var webview: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webview = WKWebView()
            webview.navigationDelegate = self
            view = webview
            let url = URL(string: "https://edition.cnn.com")!
            webview.load(URLRequest(url: url))
            webview.allowsBackForwardNavigationGestures = true
        }
    }
    

    


