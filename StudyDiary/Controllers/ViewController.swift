//
//  ViewController.swift
//  StudyDiary
//
//  Created by 박다현 on 5/3/24.
//

import UIKit

final class ViewController: UIViewController {

    let dataManager = DataManager()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavi()
        setupTableView()
    }
    
    //네비게이션 셋팅
    func setupNavi(){
        self.navigationItem.title = "메인화면"
        let myProfile = UIBarButtonItem(image: UIImage(systemName: "person.crop.circle"), style: .plain, target: self, action: #selector(myProfileTapped))
        let addProfile = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(plusTapped))
        
        navigationItem.rightBarButtonItem = addProfile
        navigationItem.leftBarButtonItem = myProfile
    }
    
    //테이블 뷰 셋팅
    func setupTableView(){
        view.backgroundColor = .white
        dataManager.makeProfileData()
        tableView.rowHeight = 100
        tableView.delegate = self
        tableView.dataSource = self
    }

    //프로필 바버튼 이벤트(왼쪽)
    @objc func myProfileTapped(){
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "ProfileView") as? ProfileViewController{
            secondVC.profileData = dataManager.myProfileData
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    //플러스 바버튼 이벤트(오른쪽)
    @objc func plusTapped(){
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "CreateView") as? CreateViewController{
            secondVC.delegate = self
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
}

// MARK: - EXTENSION UITableViewDataSource
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.getData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
        let array = dataManager.getData()[indexPath.row]
        cell.enNameLabel.text = array.enName
        cell.krNameLabel.text = array.krName
        cell.mainImageView.image = array.mainImage
        return cell
    }
    
}

// MARK: - EXTENSION UITableViewDelegate
extension ViewController:UITableViewDelegate{
    // 셀이 선택이 되었을때 어떤 동작을 할 것인지 뷰컨트롤러에게 물어봄
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 세그웨이를 실행
        performSegue(withIdentifier: "toProfile", sender: indexPath)
    }
    
    // prepare세그웨이(데이터 전달)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toProfile" {
            let detailVC = segue.destination as! ProfileViewController
            let index = sender as! IndexPath
            // 배열에서 아이템을 꺼내서, 다음화면으로 전달
            detailVC.profileData = dataManager.getData()[index.row]
        }
    }
}

// MARK: - EXTENSION ProfileDelegate
extension ViewController:ProfileDelegate{
    func addNewProfile(_ profile: ProfileModel) {
        dataManager.updataData(profile)
        tableView.reloadData()
    }
    
    
}
