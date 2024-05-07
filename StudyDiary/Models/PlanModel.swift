//
//  PlanModel.swift
//  StudyDiary
//
//  Created by 박다현 on 5/4/24.
//

import Foundation

protocol PlanDelegate:AnyObject {
    func addNewplan(_ plan:PlanModel)
}

struct PlanModel{
    var planDate:Date
    var planTitle:String
    var planContents:String?
    
    var planDayString:String{
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: planDate)
        return String("\(components.year!)-\(components.month!)-\(components.day!)")
    }
    
    var planTimeString:String{
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour, .minute, .second], from: planDate)
        return String("\(components.hour!):\(components.minute!):\(components.second!)")
    }
}
