
import UIKit
import WebKit

class ShowViewController: UIViewController, WKNavigationDelegate {
    
    var webview: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webview = WKWebView()
        webview.navigationDelegate = self
        view = webview
        let url = URL(string: "https://www.bbc.com/news")!
        webview.load(URLRequest(url: url))
        webview.allowsBackForwardNavigationGestures = true
    }
    

    

}
