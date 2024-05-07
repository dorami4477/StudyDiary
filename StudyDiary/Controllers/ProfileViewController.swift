//
//  ProfileViewController.swift
//  StudyDiary
//
//  Created by 박다현 on 5/3/24.
//

import UIKit

final class ProfileViewController: UIViewController {

    var profileData:ProfileModel?
    
    @IBOutlet weak var mainImagVIew: UIImageView!
    @IBOutlet weak var enNameLabel: UILabel!
    @IBOutlet weak var krNameLabel: UILabel!
    @IBOutlet weak var introTextView: UILabel!
    @IBOutlet weak var mbtiLabel: UILabel!
    @IBOutlet weak var gitHubLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var interestLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImagVIew.image = profileData?.mainImage
        enNameLabel.text = profileData?.enName
        krNameLabel.text = profileData?.krName
        introTextView.text = profileData?.intro
        mbtiLabel.text = profileData?.mbti
        gitHubLabel.text = profileData?.github
        cityLabel.text = profileData?.city
        interestLabel.text = profileData?.interest
        hobbyLabel.text = profileData?.hobby
    }
    
}
