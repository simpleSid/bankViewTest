//
//  OperationsContainerView.swift
//  BankTest
//
//  Created by Денис on 18.08.2019.
//  Copyright © 2019 Денис. All rights reserved.
//

import UIKit

class OperationsContainerView: UIView {
    //MARK: Properties
    var searchBar: UISearchBar = {
        let bar = UISearchBar()
        bar.translatesAutoresizingMaskIntoConstraints = false
        bar.placeholder = "Поиск"
        bar.layer.cornerRadius = 15
        bar.searchBarStyle = .minimal
        return bar
    }()
    
    let timeRangeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.backgroundColor = #colorLiteral(red: 0.4240273237, green: 0.4332768619, blue: 0.4635564089, alpha: 1)
        button.setImage(#imageLiteral(resourceName: "rec"), for: .normal)
        button.setTitle("7 дней", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.imageEdgeInsets = UIEdgeInsets(top: 1, left: 5, bottom: 1, right: 75)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
        return button
    }()
    
    let operationsHistoryTableView: UITableView = {
        var tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = 100
        tableView.register(OperationCell.self, forCellReuseIdentifier: "Cell")
        return tableView
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
        self.addSubview(searchBar)
        self.addSubview(timeRangeButton)
        self.addSubview(operationsHistoryTableView)
    }
    
    func setConstraints() {
        setSearchBarConstraints()
        setTimeRangeButtonConstraints()
        setOperationsHistoryTableViewConstraints()
    }
    
    func setSearchBarConstraints() {
        searchBar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        searchBar.centerYAnchor.constraint(equalTo: timeRangeButton.centerYAnchor).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: timeRangeButton.leadingAnchor, constant: 0).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setTimeRangeButtonConstraints() {
        timeRangeButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        timeRangeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        timeRangeButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        timeRangeButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    func setOperationsHistoryTableViewConstraints() {
        operationsHistoryTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        operationsHistoryTableView.topAnchor.constraint(equalTo: timeRangeButton.bottomAnchor, constant: 8).isActive = true
        operationsHistoryTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        operationsHistoryTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
