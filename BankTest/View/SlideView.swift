//
//  SliderView.swift
//  BankTest
//
//  Created by Денис on 14.08.2019.
//  Copyright © 2019 Денис. All rights reserved.
//

import UIKit

class SlideView: UIView {
    //MARK: Properties
    let bankAccountLabel: UILabel = {
        var label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 10))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = label.font.withSize(20)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6)
        return label
    }()
    
    let moneyLabel: UILabel = {
        var label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = label.font.withSize(30)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6)
        return label
    }()
    
    let moneyWithOverdraftLabel: UILabel = {
        var label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 18))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = label.font.withSize(20)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
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
        self.addSubview(bankAccountLabel)
        self.addSubview(moneyLabel)
        self.addSubview(moneyWithOverdraftLabel)
    }
    
    func setConstraints() {
        setBankAccountLabelConstraints()
        setMoneyLabelConstraints()
        setMoneyWithOverdraftLabelConstraints()
    }
    
    func setBankAccountLabelConstraints() {
        bankAccountLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        bankAccountLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        bankAccountLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
    }
    
    func setMoneyLabelConstraints(){
        moneyLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        moneyLabel.topAnchor.constraint(equalTo: bankAccountLabel.bottomAnchor, constant: 8).isActive = true
        moneyLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
    }
    
    func setMoneyWithOverdraftLabelConstraints(){
        moneyWithOverdraftLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        moneyWithOverdraftLabel.topAnchor.constraint(equalTo: moneyLabel.bottomAnchor, constant: 8).isActive = true
        moneyWithOverdraftLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
    }
}
