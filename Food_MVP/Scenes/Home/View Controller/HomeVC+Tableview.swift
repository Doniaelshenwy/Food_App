//
//  HomeVC+Tableview.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 21/10/2022.
//

import Foundation
import UIKit

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.countFoodArray() ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as! HomeTableViewCell
        presenter?.showDataInCell(cell: cell , for: indexPath.row)
        cell.selectionStyle = .none
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    func setDataTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
    }

   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      // let vc = DetailsViewController(nibName: "DetailsViewController", bundle: nil)
//
//        self.navigationController?.pushViewController(vc, animated: true)
       presenter?.didSelect(index: indexPath.row)
    
    }
}


//extension UITableView {
//
//    func registerCellNib<Cell: UITableViewCell>(cellClass: Cell.Type){
//        self.register(UINib(nibName: String(describing: Cell.self), bundle: nil), forCellReuseIdentifier: String(describing: Cell.self))
//    }
//
//
//    func dequeue<Cell: UITableViewCell>() -> Cell{
//        let identifier = String(describing: Cell.self)
//
//        guard let cell = self.dequeueReusableCell(withIdentifier: identifier) as? Cell else {
//            fatalError("Error in cell")
//        }
//
//        return cell
//    }
//
//}
