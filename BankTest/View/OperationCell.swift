//
//  OperationCell.swift
//  BankTest
//
//  Created by Денис on 17.08.2019.
//  Copyright © 2019 Денис. All rights reserved.
//

import UIKit

class OperationCell: UITableViewCell {
    //MARK: Properties
    let companyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let operationNumberLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return label
    }()
    
    let operationDescriptionLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.4352941215, green: 0.4431372583, blue: 0.4745098054, alpha: 1)
        return label
    }()
    
    let operationAdditionalDescriptionLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return label
    }()
    
    let creditedFunds: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        return label
    }()

    //MARK: Methods
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        addSubViews()
        setConstraints()
    }

    func addSubViews() {
        self.addSubview(companyImageView)
        self.addSubview(operationNumberLabel)
        self.addSubview(operationDescriptionLabel)
        self.addSubview(operationAdditionalDescriptionLabel)
        self.addSubview(creditedFunds)
    }
    
    func setConstraints() {
        setCompanyImageViewConstraints()
        setOperationNumberLabelConstraints()
        setOperationDescriptionLabelConstraints()
        setOperationAdditionalDescriptionLabelConstraints()
        setCreditedFundsConstraints()
    }
    
    func setCompanyImageViewConstraints() {
        companyImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        companyImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        companyImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        companyImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func setOperationNumberLabelConstraints() {
        operationNumberLabel.leadingAnchor.constraint(equalTo: companyImageView.trailingAnchor, constant: 16).isActive = true
        operationNumberLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        operationNumberLabel.widthAnchor.constraint(equalToConstant: self.frame.size.width / 4).isActive = true
    }
    
    func setOperationDescriptionLabelConstraints() {
        operationDescriptionLabel.leadingAnchor.constraint(equalTo: companyImageView.trailingAnchor, constant: 16).isActive = true
        operationDescriptionLabel.topAnchor.constraint(equalTo: operationNumberLabel.bottomAnchor, constant: 8).isActive = true
        operationDescriptionLabel.widthAnchor.constraint(equalToConstant: self.frame.size.width / 2).isActive = true
    }
    
    func setOperationAdditionalDescriptionLabelConstraints() {
        operationAdditionalDescriptionLabel.leadingAnchor.constraint(equalTo: companyImageView.trailingAnchor, constant: 16).isActive = true
        operationAdditionalDescriptionLabel.topAnchor.constraint(equalTo: operationDescriptionLabel.bottomAnchor, constant: 8).isActive = true
        operationAdditionalDescriptionLabel.widthAnchor.constraint(equalToConstant: self.frame.size.width / 2).isActive = true
    }
    
    func setCreditedFundsConstraints() {
        creditedFunds.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        creditedFunds.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        creditedFunds.widthAnchor.constraint(equalToConstant: self.frame.size.width / 4).isActive = true
    }
}
