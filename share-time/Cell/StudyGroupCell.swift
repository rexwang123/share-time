//
//  StudyGroupCell.swift
//  share-time
//
//  Created by Guanxin Li on 4/14/18.
//  Copyright © 2018 share-time. All rights reserved.
//

import UIKit

class StudyGroupCell: UITableViewCell {
    @IBOutlet weak var profNameButton: UILabel!
    @IBOutlet weak var groupNameLabel: UILabel!
    @IBAction func onEnterGroupButton(_ sender: Any) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}