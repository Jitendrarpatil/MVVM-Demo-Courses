//
//  CourseViewModel.swift
//  MVVM Demo Courses
//
//  Created by Jitendra Patil on 10/01/19.
//  Copyright © 2019 Jitendra Patil. All rights reserved.
//

import UIKit

class CourseViewModel: NSObject {
    let institute : Institute
    let courseTitle : String
    let courseDetails: String
    let details : Bool
    
    init(institute: Institute) {
        self.institute = institute
        self.courseTitle = institute.name
        if institute.coursesCount > 30 {
            self.courseDetails = "30 Plus courses"
            self.details = true
        } else {
            self.courseDetails = "\(institute.coursesCount)"
            self.details = false
        }
    }
}
