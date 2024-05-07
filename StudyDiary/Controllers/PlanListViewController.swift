//
//  planListViewController.swift
//  StudyDiary
//
//  Created by 박다현 on 5/7/24.
//

import UIKit

final class PlanListViewController: UIViewController {

    @IBOutlet weak var planTableView: UITableView!
    
    let planDataManager = PlanDataManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        planTableView.dataSource = self
    }
    override func viewWillAppear(_ animated: Bool) {
        planTableView.reloadData()
    }
}

extension PlanListViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planDataManager.getData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = planTableView.dequeueReusableCell(withIdentifier: "PlanListCell", for: indexPath) as! PlanListCell
        cell.listDate.text = planDataManager.getData()[indexPath.row].planDayString
        cell.listTitle.text = planDataManager.getData()[indexPath.row].planTitle
        cell.listContents.text = planDataManager.getData()[indexPath.row].planContents
        return cell
    }
    
    
}
