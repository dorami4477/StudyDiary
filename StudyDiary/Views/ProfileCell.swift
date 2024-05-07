//
//  ProfileCell.swift
//  StudyDiary
//
//  Created by 박다현 on 5/3/24.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var mainImageView:UIImageView!
    @IBOutlet weak var enNameLabel:UILabel!
    @IBOutlet weak var krNameLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    

}
