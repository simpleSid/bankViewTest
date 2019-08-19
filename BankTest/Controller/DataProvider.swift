//
//  DataProvider.swift
//  BankTest
//
//  Created by Денис on 17.08.2019.
//  Copyright © 2019 Денис. All rights reserved.
//

import UIKit

class DataProvider: NSObject {
}

extension DataProvider: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let tableHeaderView: TableHeaderView = {
            let view = TableHeaderView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 40))
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            return view
        }()
        
        tableHeaderView.dateLabel.text = "12 Авг."
        tableHeaderView.totalAmountLabel.text = "+ 100,44 ₽"
        
        return tableHeaderView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}

extension DataProvider: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? OperationCell else { return UITableViewCell() }

        cell.companyImageView.image = UIImage(named: "tinkoff")
        cell.operationNumberLabel.text = "№1236"
        cell.operationDescriptionLabel.text = "Серп и молот"
        cell.operationAdditionalDescriptionLabel.text = "В том числе НДС 1,25 ₽"
        cell.creditedFunds.text = "+ 1050,00 ₽"
        
        return cell
    }
    
}
