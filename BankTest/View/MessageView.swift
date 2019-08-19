//
//  MessageView.swift
//  BankTest
//
//  Created by Денис on 17.08.2019.
//  Copyright © 2019 Денис. All rights reserved.
//

import UIKit

class MessageView: UIView {
    //MARK: Properties
    let messageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Расходные операции приостановлены"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.numberOfLines = 0
        return label
    }()
    var messageLabelHeightAnchor: NSLayoutConstraint!
    
    let messageButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "arrow"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 25
        button.layer.masksToBounds = true
        return button
    }()
    var messageButtonHeightAnchor: NSLayoutConstraint!
    
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
        self.addSubview(messageLabel)
        self.addSubview(messageButton)
    }
    
    func setConstraints() {
        setMessageLabelConstraints()
        setmessageButtonConstraints()
    }
    
    func setMessageLabelConstraints() {
        messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        messageLabelHeightAnchor = messageLabel.heightAnchor.constraint(equalToConstant: 0)
        messageLabelHeightAnchor.isActive = true
        messageLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func setmessageButtonConstraints() {
        messageButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        messageButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        messageButtonHeightAnchor = messageButton.heightAnchor.constraint(equalToConstant: 0)
        messageButtonHeightAnchor.isActive = true
        messageButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
