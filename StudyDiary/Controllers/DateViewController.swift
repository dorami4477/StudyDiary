

import UIKit

final class DateViewController: UIViewController{

    let planDataManager = PlanDataManager.shared

    var days:[Date] = []
    
    // 달력 선언
    lazy var calendarView: UICalendarView = {
        let view = UICalendarView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.wantsDateDecorations = true
        
        return view
    }()
    
    var selectedDate: DateComponents? = nil
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavi()
        applyConstraints()
        days = planDataManager.makeDateList()
        setCalendar()
        reloadDateView(date: Date())
    }

    //네비게이션 세팅
    fileprivate func setupNavi(){
        view.backgroundColor = .white
        self.navigationItem.title = "일정관리"
        
        let scheduleBtn = UIBarButtonItem(image: UIImage(systemName: "list.star"), style: .plain, target: self, action: #selector(scheduleTapped))
        let plusBtn = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(plusTapped))
        
        navigationItem.rightBarButtonItem = plusBtn
        navigationItem.leftBarButtonItem = scheduleBtn
    }
    
    fileprivate func setCalendar() {
        calendarView.delegate = self
        
        let dateSelection = UICalendarSelectionSingleDate(delegate: self)
        calendarView.selectionBehavior = dateSelection
    }
    
    fileprivate func applyConstraints() {
        view.addSubview(calendarView)
        
        let calendarViewConstraints = [
            calendarView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            calendarView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            calendarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor )
        ]
        
        NSLayoutConstraint.activate(calendarViewConstraints)
    }
    
    //캘린더 데코레이션 리로드
    func reloadDateView(date: Date?) {
        if date == nil { return }
        let calendar = Calendar.current
        calendarView.reloadDecorations(forDateComponents: [calendar.dateComponents([.day, .month, .year], from: date!)], animated: true)
    }
    
    //왼쪽 바 버튼 액션
    @objc func scheduleTapped(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let secondVC = storyboard.instantiateViewController(withIdentifier: "PlanListView") as? PlanListViewController{
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    //오른쪽 바 버튼 액션
    @objc func plusTapped(){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let secondVC = storyboard.instantiateViewController(withIdentifier: "SetPlanView") as? SetPlanViewController{
            secondVC.delegate = self
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
}

extension DateViewController: UICalendarViewDelegate, UICalendarSelectionSingleDateDelegate {
    
    func dateSelection(_ selection: UICalendarSelectionSingleDate, didSelectDate dateComponents: DateComponents?) {
        selection.setSelected(dateComponents, animated: true)
        selectedDate = dateComponents
        reloadDateView(date: Calendar.current.date(from: dateComponents!))
    }
    
    // 캘린더에 라벨링
    func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
        let date = dateComponents.date!

        if days.contains(date) {
            return .customView() {
                let emoji = UILabel()
                emoji.text = "🦄"
                return emoji
            }
        }else {
            return nil
        }
    }
}

//플랜 델리게이션
extension DateViewController: PlanDelegate {
    func addNewplan(_ plan: PlanModel) {
        planDataManager.updataData(plan)
        days = planDataManager.makeDateList()
        days.forEach { date in
            calendarView.reloadDecorations(forDateComponents: [Calendar.current.dateComponents([.day, .month, .year], from: date)], animated: true)
        }
    }
    
}
