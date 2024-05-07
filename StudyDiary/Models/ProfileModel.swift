//
//  ProfileModel.swift
//  StudyDiary
//
//  Created by 박다현 on 5/3/24.
//

import UIKit

protocol ProfileDelegate:AnyObject {
    func addNewProfile(_ profile:ProfileModel)
}

struct ProfileModel{
    var mainImage:UIImage?
    let enName:String
    let krName:String
    var intro:String?
    var github:String?
    var mbti:String?
    var city:String?
    var hobby:String?
    var interest:String?
}
