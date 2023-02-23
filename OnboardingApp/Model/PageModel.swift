//
//  PageModel.swift
//  OnboardingApp
//
//  Created by Mahmut Senbek on 21.02.2023.
//

import UIKit

extension OnboardingViewController {
    
   static let pages : [Page] = [Page(animationName: "animation1", title: "Learn to Code", description: "Find awesome tutorials on how to code and improve your conding practies"),
                          Page(animationName: "animation2", title: "Code with Friends", description: "Pratice with friends and solve problems together to earn points"),
                          Page(animationName: "animation3", title: "Always there to help", description: "Having trouble? Get guidance from our experienced Mentors")
    ]
}
