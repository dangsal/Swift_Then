//
//  ViewController.swift
//  Swift_Then
//
//  Created by 이성호 on 2023/06/13.
//

import UIKit

import Then

final class ViewController: UIViewController {
    
    // MARK: - ui component
    
    private let titleLabel = UILabel().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "text"
        $0.textColor = .red
    }

    // MARK: - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
    }

    // MARK: - func
    
    private func setupLayout() {
        self.view.addSubview(self.titleLabel)
        self.titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
    }

}

