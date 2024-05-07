//
//  SetPlanViewController.swift
//  StudyDiary
//
//  Created by 박다현 on 5/4/24.
//

import UIKit

final class SetPlanViewController: UIViewController {
    
    //UI 선언
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var planTitleLabel: UITextField!
    @IBOutlet weak var contentsView: UITextView!
    @IBOutlet weak var warningLabel: UILabel!
    
    weak var delegate:PlanDelegate?
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setTextUI()
        title = "새 일정"
        warningLabel.isHidden = true
    }
    
    //textUI 셋팅
    func setTextUI(){
        planTitleLabel.delegate = self
        planTitleLabel.layer.borderWidth = 1
        planTitleLabel.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        planTitleLabel.clipsToBounds = true
        planTitleLabel.layer.cornerRadius = 5
        
        contentsView.text = "일정 내용을 입력하세요."
        contentsView.textColor = .secondaryLabel
        contentsView.font = .systemFont(ofSize: 15.0)
        contentsView.layer.borderWidth = 1
        contentsView.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        contentsView.delegate = self
        contentsView.clipsToBounds = true
        contentsView.layer.cornerRadius = 5
    }
    
    //저장 버튼 액션
    @IBAction func addPlanButtonTapped(_ sender: UIButton) {
        guard let planTitle = planTitleLabel.text else { return }
        //공백제거 후 텍스트필드가 비었는지 확인
        if !planTitle.trimmingCharacters(in: .whitespaces).isEmpty{
            let date = datePicker.date
            let newPlan = PlanModel(planDate: date, planTitle: planTitle, planContents: contentsView.text)
            //새로운 계획 추가
            delegate?.addNewplan(newPlan)
            navigationController?.popViewController(animated: true)
            
        }else{
            warningLabel.isHidden = false
            warningLabel.text = "제목을 입력하세요."
        }
        
    }
    
    
}

// MARK: - EXTENSION UITextViewDelegate
// TextView placeHolder 만들기
extension SetPlanViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        guard textView.textColor == .secondaryLabel else { return }
        textView.text = nil
        textView.textColor = .label
        warningLabel.isHidden = true
    }
}

// MARK: - EXTENSION UITextFieldDelegate
// 재 입력시 경고 문구 사라지게
extension SetPlanViewController:UITextFieldDelegate{
    //텍스트 필드 글자 내용이(한글자씩)입력되거나 지워질때 호출(허락)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let planTitle = planTitleLabel.text else { return true}
        //공백제거 후 텍스트필드가 비었는지 확인
        if !planTitle.trimmingCharacters(in: .whitespaces).isEmpty{
            warningLabel.isHidden = true
        }
        return true
    }
}
