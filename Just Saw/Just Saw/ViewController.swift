//
//  ViewController.swift
//  Just Saw
//
//  Created by Akash Shanmugaraj on 16/07/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
        let statusmessage = UILabel()
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
        
    }


}

