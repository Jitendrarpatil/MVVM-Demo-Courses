//
//  CoursesViewModel.swift
//  MVVM Demo Courses
//
//  Created by Jitendra Patil on 10/01/19.
//  Copyright © 2019 Jitendra Patil. All rights reserved.
//

import Foundation
//Commit
class CoursesViewModel: NSObject {
    let title = "Courses"
    var coursesModels : [CourseViewModel] = []
    func ready() {
        for i in 1...100 {
            let institute = Institute(name: "Institute: \(i)", CouesesOfferedByInstitute: Int(arc4random_uniform(50)))
            let courseViewModel = CourseViewModel(institute: institute)
            coursesModels.append(courseViewModel)
        }
    }
}
