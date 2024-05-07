//
//  DataManager.swift
//  StudyDiary
//
//  Created by 박다현 on 5/3/24.
//

import UIKit

final class DataManager{
    private var profileDataAarray:[ProfileModel] = []
    let myProfileData:ProfileModel = ProfileModel(mainImage: UIImage(named: "image06.jpeg"), enName: "Diane", krName: "박다현", intro: "이번엔 꼭 스위프트로 뭔가 만들어 내고 싶은 다이앤입니다 😊", github: "https://github.com/dorami4477", mbti: "ISFP", city: "서울", hobby: "클라이밍, 산, 수영", interest: "iOS")
    
    func makeProfileData(){
        profileDataAarray = [
            ProfileModel(mainImage: UIImage(named: "image01.jpeg"), enName: "Eren", krName: "임동현", intro: "자유를 추구하는 에렌입니다.", github: "https://github.com/LDH9999", mbti: "INTP", city: "천안", hobby: "멍때리기, 게임", interest: "iOS, 게임"),
            ProfileModel(mainImage: UIImage(named: "image02.jpeg"), enName: "Taylor", krName: "한수빈", intro: "안녕하세요 스위프트하는 테일러입니다.", github: "github.com/waterbean", mbti: "INTP", city: "서울, 대전", hobby: "애플 뮤직 켜놓고 멍때리기, 얼죽아", interest: "iOS, UI/UX"),
            ProfileModel(mainImage: UIImage(named: "image03.png"), enName: "Avery", krName: "박윤선", intro: "인천에 살고 애플기기 좋아합니다. 비전프로 체험하고 싶어요. ", github: "https://github.com/hellop2024/", mbti: "INFJ", city: "인천", hobby: "유튜브 보기, 맛집 검색하기", interest: "iOS"),
            ProfileModel(mainImage: UIImage(named: "image04.jpeg"), enName: "Christy", krName: "이한슬", intro: "모두가 장벽없이 사용할 수 있는 어플을 개발하고 싶은 예비 개발자 Christy입니다!",  mbti: "INFP", city: "경기", hobby: "얼죽아, 맛집 검색하기, 유튜브 보기, 디즈니, 술, 수영, 여행", interest: "iOS"),
            ProfileModel(mainImage: UIImage(named: "image05.png"), enName: "Chris", krName: "이혜인", intro: "스위프트 열공중인 크리스입니다! 피아노가 취미이고, 요리하는 것도 좋아합니다. 새로 생긴 취미는 요가예요 🧘‍♀️", github: "https://github.com/hyehyeiniini", mbti: "ENTP", city: "서울, 남양주", hobby: "피아노, 맛집 탐방, 술, 요가", interest: "iOS"),
            ProfileModel(mainImage: UIImage(named: "image06.jpeg"), enName: "Apple", krName: "서지민")
        ]
        
    }
    
    func getData() -> [ProfileModel]{
        return profileDataAarray
    }
    
    func updataData(_ newProfile:ProfileModel){
        profileDataAarray.append(newProfile)
    }

}
