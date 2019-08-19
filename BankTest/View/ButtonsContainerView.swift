//
//  ButtonsContainerView.swift
//  BankTest
//
//  Created by Денис on 16.08.2019.
//  Copyright © 2019 Денис. All rights reserved.
//

import UIKit

class ButtonsContainerView: UIView {
    //MARK: Properties
    let accountStoryButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "extract"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let accountDetailsButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "rec"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let otherButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "other"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let accountStoryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "Выписка"
        return label
    }()
    
    let accountDetailsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "Реквизиты"
        return label
    }()
    
    let otherLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "Прочее"
        return label
    }()
    
    //MARK: Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubViews() {
        self.addSubview(accountStoryButton)
        self.addSubview(accountDetailsButton)
        self.addSubview(otherButton)
        
        self.addSubview(accountStoryLabel)
        self.addSubview(accountDetailsLabel)
        self.addSubview(otherLabel)
    }
    
    func setConstraints() {
        setBankStoryButtonConstraints()
        setBankCountDataButtonConstraints()
        setOtherButtonConstraint()
        
        setAccountStoryLabelConstraints()
        setAccountDetailsLabelConstraints()
        setOtherLabelConstraints()
    }
    
    func setBankStoryButtonConstraints() {
        accountStoryButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        accountStoryButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        accountStoryButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        accountStoryButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func setBankCountDataButtonConstraints() {
        accountDetailsButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        accountDetailsButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        accountDetailsButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        accountDetailsButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func setOtherButtonConstraint() {
        otherButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        otherButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        otherButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        otherButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func setAccountStoryLabelConstraints() {
        accountStoryLabel.topAnchor.constraint(equalTo: accountStoryButton.bottomAnchor, constant: 8).isActive = true
        accountStoryLabel.centerXAnchor.constraint(equalTo: accountStoryButton.centerXAnchor).isActive = true
    }
    
    func setAccountDetailsLabelConstraints() {
        accountDetailsLabel.topAnchor.constraint(equalTo: accountDetailsButton.bottomAnchor, constant: 8).isActive = true
        accountDetailsLabel.centerXAnchor.constraint(equalTo: accountDetailsButton.centerXAnchor).isActive = true
    }
    
    func setOtherLabelConstraints() {
        otherLabel.topAnchor.constraint(equalTo: otherButton.bottomAnchor, constant: 8).isActive = true
        otherLabel.centerXAnchor.constraint(equalTo: otherButton.centerXAnchor).isActive = true
    }
}
