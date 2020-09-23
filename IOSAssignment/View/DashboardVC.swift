//
//  ViewController.swift
//  IOSAssignment
//
//  Created by Gagandeep Mishra on 23/09/20.
//

import UIKit

class DashboardVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var objResponseViewModel: JsonViewModel!
    var refreshControl = UIRefreshControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
           refreshControl.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
           tableView.addSubview(refreshControl)
        self.objResponseViewModel.getJsonData { (success) in
            if success{
                self.tableView.reloadData()
            }
        }
    }
//MARK:- Pull to refresh
    @objc func refresh(_ sender: AnyObject) {
        self.objResponseViewModel.getJsonData { (success) in
            if success{
                self.tableView.reloadData()
                self.refreshControl.endRefreshing()
            }
        }
    }

}
extension DashboardVC{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objResponseViewModel.numberOfRow()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JsonTableCell", for: indexPath) as? JsonTableCell
        cell?.model = self.objResponseViewModel.cellRowIndexPath(index: indexPath.row)
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetaildVC") as! DetaildVC
        vc.data = self.objResponseViewModel.didSelectIndexPath(index: indexPath.row)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
