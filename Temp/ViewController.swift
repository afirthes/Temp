//
//  ViewController.swift
//  Temp
//
//  Created by Afir Thes on 20.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    var stack: UIStackView = UIStackView()

    func configure() {

        stack.axis = .vertical
        stack.spacing = 10
        
        view.addSubview(stack)
        
        let a1 = AlarmLineView()
        let a2 = AlarmLineView()
        let a3 = AlarmLineView()
        
        stack.addArrangedSubview(a1)
        stack.addArrangedSubview(a2)
        stack.addArrangedSubview(a3)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            stack.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 30),
            
            a1.heightAnchor.constraint(equalToConstant: 50),
            a2.heightAnchor.constraint(equalToConstant: 50),
            a3.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }
}

