//
//  planDataManager.swift
//  StudyDiary
//
//  Created by 박다현 on 5/4/24.
//

import Foundation

final class PlanDataManager{
    
    //싱글톤 설정
    static let shared = PlanDataManager()
    private init(){}
    
    //데이터의 배열 선언
    private var planDataAarray:[PlanModel] = [PlanModel(planDate: Date(), planTitle: "5월 3주차", planContents: "3주차 앱만들기 스터디 - Study Diary / 9시 예정")]
    
    
    func getData() -> [PlanModel]{
        return planDataAarray
    }
    
    //새 플랜 추가
    func updataData(_ newPlan:PlanModel){
        planDataAarray.append(newPlan)
    }
    
    //플랜에서 날짜만 담는 배열
    var planDayList:[Date] = []
    
    //달력에 알맞는 형태로 날짜 변경
    func makeDateList() -> [Date]{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.timeZone = NSTimeZone(name: "Ko_KR") as TimeZone?
        
        for i in 0..<planDataAarray.count{
            planDayList.append(dateFormatter.date(from: planDataAarray[i].planDayString)!)
        }
        return planDayList
    }

    

    
    
    

}
