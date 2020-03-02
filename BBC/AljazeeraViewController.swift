

import UIKit
import WebKit

class AljazeeraViewController: UIViewController ,WKNavigationDelegate{
    var webview: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webview = WKWebView()
            webview.navigationDelegate = self
            view = webview
            let url = URL(string: "https://www.w3newspapers.com/bangladesh/")!
            webview.load(URLRequest(url: url))
            webview.allowsBackForwardNavigationGestures = true
        }
    }
    


