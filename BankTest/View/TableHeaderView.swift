//
//  TableHeaderView.swift
//  BankTest
//
//  Created by Денис on 19.08.2019.
//  Copyright © 2019 Денис. All rights reserved.
//

import UIKit

class TableHeaderView: UIView {
    
    var dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    var totalAmountLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubViews()
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubViews() {
        self.addSubview(dateLabel)
        self.addSubview(totalAmountLabel)
    }
    
    func setConstraints() {
        setDateLabelConstraints()
        setTotalAmountLabelConstraints()
    }
    
    func setDateLabelConstraints() {
        dateLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        dateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        dateLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setTotalAmountLabelConstraints() {
        totalAmountLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        totalAmountLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        totalAmountLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
}
