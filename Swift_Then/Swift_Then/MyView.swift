//
//  MyView.swift
//  Swift_Then
//
//  Created by 이성호 on 2023/06/13.
//

import UIKit

import Then

final class MyView: UIView {
    
    // MARK: - ui component
    
    private let titleLabel: UILabel = UILabel().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "titleLabel"
        $0.textColor = .blue
        $0.font = .boldSystemFont(ofSize: 22)
    }
    
    // MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
        self.setupLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - func
    
    private func configureView() {
        self.backgroundColor = .lightGray
    }
    
    private func setupLayout() {
        self.addSubview(self.titleLabel)
        self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
