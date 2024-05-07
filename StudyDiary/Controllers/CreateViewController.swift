//
//  CreateViewController.swift
//  StudyDiary
//
//  Created by 박다현 on 5/3/24.
//

import UIKit

final class CreateViewController: UIViewController {
    
//ui 선언
    @IBOutlet weak var mainImagVIew: UIImageView!
    @IBOutlet weak var enNameTextField: UITextField!
    @IBOutlet weak var krNameTextField: UITextField!
    @IBOutlet weak var introTextField: UITextField!
    @IBOutlet weak var mbtiTextField: UITextField!
    @IBOutlet weak var gitHubTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var interestTextField: UITextField!
    @IBOutlet weak var hobbyTextField: UITextField!
    
    @IBOutlet weak var warningLabel: UILabel!
    
    weak var delegate:ProfileDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //경고 셋팅
        warningLabel.isHidden = true
        warningLabel.textColor = .red
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        guard let enName = enNameTextField.text else { return }
        guard let krName = krNameTextField.text else { return }
        //공백제거 후 텍스트필드가 비었는지 확인
        if enName.trimmingCharacters(in: .whitespaces).isEmpty || krName.trimmingCharacters(in: .whitespaces).isEmpty{
            warningLabel.text = "필수 정보를 입력해주세요."
            warningLabel.isHidden = false
        }else{
            let newProfile = ProfileModel(mainImage: UIImage(named: "image01.jpeg"), enName: enName, krName: krName, intro: introTextField.text, github: gitHubTextField.text, mbti: mbtiTextField.text, city: cityTextField.text, hobby: hobbyTextField.text, interest: interestTextField.text)
            //새 프로필 추가
            delegate?.addNewProfile(newProfile)
            navigationController?.popViewController(animated: true)
        }
    }
    
}


