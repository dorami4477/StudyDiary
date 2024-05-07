//
//  PlanListCell.swift
//  StudyDiary
//
//  Created by 박다현 on 5/7/24.
//

import UIKit

class PlanListCell: UITableViewCell {

    @IBOutlet weak var listDate: UILabel!
    @IBOutlet weak var listTitle: UILabel!
    @IBOutlet weak var listContents: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
