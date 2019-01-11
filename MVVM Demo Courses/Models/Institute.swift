//
//  Institute.swift
//  MVVM Demo Courses
//
//  Created by Jitendra Patil on 10/01/19.
//  Copyright © 2019 Jitendra Patil. All rights reserved.
//

import UIKit

class Institute: NSObject {
    var name : String
    var coursesCount : Int
    init(name : String, CouesesOfferedByInstitute CoursesCount: Int) {
        self.name = name
        self.coursesCount = CoursesCount
    }
}
