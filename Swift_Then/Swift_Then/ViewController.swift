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
    
    private let myView: MyView = MyView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
    }

    // MARK: - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
        self.setupDelegation()
    }

    // MARK: - func
    
    private func setupLayout() {
        self.view.addSubview(self.titleLabel)
        self.titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.view.addSubview(self.myView)
        self.myView.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 50).isActive = true
        self.myView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        self.myView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        self.myView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    private func setupDelegation() {
        self.myView.delegate = self
    }
}

extension ViewController: MyViewDelegate {
    func changeTextButtonDidTap() {
        self.titleLabel.text = "changed!!"
    }
}
