//
//  ViewController.swift
//  Just Saw
//
//  Created by Akash Shanmugaraj on 16/07/24.
//

import UIKit

class ViewController: UIViewController, URLSessionWebSocketDelegate {

    let statusmessage = UILabel();
    private var websocket: URLSessionWebSocketTask?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
    
        // Set the label's properties
        statusmessage.text = "Cannot establish connection to Web Socket :("
        statusmessage.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        statusmessage.textColor = .black
        statusmessage.numberOfLines = 0 // Allows multiple lines
        statusmessage.lineBreakMode = .byWordWrapping
                
                // Set the label's frame (position and size)
        statusmessage.frame = CGRect(x: 40, y: 300, width: 300, height: 200)
                
                // Optionally, use Auto Layout for better handling of different screen sizes
        statusmessage.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(statusmessage)
    
        let session = URLSession(
            configuration: .default,
            delegate: self,
            delegateQueue: OperationQueue()
        )
        
        let url = URL(string: "wss://free.blr2.piesocket.com/v3/1?api_key=OThjO54wdHkmtcgQUZ3QSomonMkU6LS3Eq1NZGOX&notify_self=1")
        websocket = session.webSocketTask(with: url!)
        websocket?.resume()
        print("Attempt to connect to websocket")
    }
    
    
    func urlSession(_ session: URLSession, webSocketTask: URLSessionWebSocketTask, didCloseWith closeCode: URLSessionWebSocketTask.CloseCode, reason: Data?) {
        print("Connection Terminated")
    }
    
    func urlSession(_ session: URLSession, webSocketTask: URLSessionWebSocketTask, didOpenWithProtocol protocol: String?) {
        view.backgroundColor = .systemGreen
        statusmessage.text = "Connection sucessfully established"
    }
}

