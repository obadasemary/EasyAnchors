//
//  ViewController.swift
//  EasyAnchors
//
//  Created by Abdelrahman Mohamed on 24.12.2018.
//  Copyright © 2018 Abdelrahman Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        view.addSubview(redView)
        
        redView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor)
    }
}

extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, trailing: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor) {
        translatesAutoresizingMaskIntoConstraints = false
        
        topAnchor.constraint(equalTo: top).isActive = true
        leadingAnchor.constraint(equalTo: leading).isActive = true
        trailingAnchor.constraint(equalTo: trailing).isActive = true
        bottomAnchor.constraint(equalTo: bottom).isActive = true
    }
}

