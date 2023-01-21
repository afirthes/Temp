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
    
    var container: UIView = UIView()
    var stack: UIStackView = UIStackView()
    var firstLabel: UILabel = UILabel()
    var secondLabael: UILabel = UILabel()
    var imageView: UIImageView = UIImageView()

    func configure() {
        container.backgroundColor = .systemGray4
        view.addSubview(container)
        
        container.addSubview(stack)
        
        container.layer.cornerRadius = 10
        
        firstLabel.text = "Название будильника"
        secondLabael.text = "Мелодия"
        
        firstLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        secondLabael.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        stack.addArrangedSubview(firstLabel)
        stack.addArrangedSubview(secondLabael)
        
        imageView.image = UIImage(systemName: "chevron.right")
        imageView.contentMode = .scaleAspectFit

        stack.addArrangedSubview(imageView)
        stack.spacing = 4
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        container.translatesAutoresizingMaskIntoConstraints = false
        
        var stackBorderPadding:CGFloat = 12
        
        NSLayoutConstraint.activate([
            container.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            container.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            container.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 30),
            container.heightAnchor.constraint(equalToConstant: 50),
            
            stack.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -10),
            stack.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 10),
            stack.topAnchor.constraint(equalTo: container.topAnchor),
            stack.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            
            imageView.heightAnchor.constraint(equalToConstant: 15),
            imageView.widthAnchor.constraint(equalToConstant: 15)
        ])
    }
}

