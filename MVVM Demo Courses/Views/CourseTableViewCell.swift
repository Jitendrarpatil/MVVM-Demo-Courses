//
//  CourseTableViewCell.swift
//  MVVM Demo Courses
//
//  Created by Jitendra Patil on 10/01/19.
//  Copyright © 2019 Jitendra Patil. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell {
    var courseViewModel : CourseViewModel! {
        didSet {
            textLabel?.text = courseViewModel.courseTitle
            detailTextLabel?.text = courseViewModel.courseDetails
            accessoryType = courseViewModel.details ? .detailDisclosureButton : .none
        }
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
