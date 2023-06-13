//
//  MyView.swift
//  Swift_Then
//
//  Created by 이성호 on 2023/06/13.
//

import UIKit

import Then

protocol MyViewDelegate: AnyObject {
    func changeTextButtonDidTap()
}

final class MyView: UIView {
    
    // MARK: - ui component
    
    private let titleLabel: UILabel = UILabel().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "titleLabel"
        $0.textColor = .blue
        $0.font = .boldSystemFont(ofSize: 22)
    }
    
    private let changeTextButton: UIButton = UIButton().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("텍스트 변경", for: .normal)
        $0.backgroundColor = .systemOrange
    }
    
    // MARK: - property
    
    weak var delegate: MyViewDelegate?
    
    // MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
        self.setupLayout()
        self.setupButtonAction()
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
        
        self.addSubview(self.changeTextButton)
        self.changeTextButton.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 50).isActive = true
        self.changeTextButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.changeTextButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.changeTextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func setupButtonAction() {
        let didTapAction = UIAction { [weak self] _ in
            self?.delegate?.changeTextButtonDidTap()
        }
        self.changeTextButton.addAction(didTapAction, for: .touchUpInside)
    }
}
