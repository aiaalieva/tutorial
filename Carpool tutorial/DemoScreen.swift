//
//  DemoScreen.swift
//  Carpool tutorial
//
//  Created by aiaalieva on 12/14/18.
//  Copyright © 2018 StarTech. All rights reserved.
//

import UIKit
import paper_onboarding

class DemoScreen: UIViewController {
    //Outlets
    @IBOutlet weak var onboardingObj: OnboardingViewClass!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingObj.dataSource = self
    }


}

extension DemoScreen: PaperOnboardingDataSource {
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        
        let bgOne = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        let bgTwo = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        let bgThree = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        
        let textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
        let titleFont = UIFont(name: "Lato", size: 54)
        let descFont = UIFont(name: "Lato", size: 14)
        
        let firstScreenImg = #imageLiteral(resourceName: "Phone_verification")
        let secondScreenImg = #imageLiteral(resourceName: "Code_Resend-3")
        let thirdScreenImg = #imageLiteral(resourceName: "Welcome-3")
        
        let activeImg = #imageLiteral(resourceName: "active")
        
        return [OnboardingItemInfo(informationImage: firstScreenImg,
                                  title: "Phone number",
                                  description: "Type in your phone number to start using the app",
                                  pageIcon: activeImg,
                                  color: bgOne,
                                  titleColor: textColor,
                                  descriptionColor: textColor,
                                  titleFont: titleFont ?? UIFont.systemFont(ofSize: 54.0, weight: .regular),
                                  descriptionFont: descFont ?? UIFont.systemFont(ofSize: 14.0, weight: .regular)),
                OnboardingItemInfo(informationImage: secondScreenImg,
                                   title: "Verification",
                                   description: "Type in the code you received",
                                   pageIcon: activeImg,
                                   color: bgTwo,
                                   titleColor: textColor,
                                   descriptionColor: textColor,
                                   titleFont: titleFont ?? UIFont.systemFont(ofSize: 54.0, weight: .regular),
                                   descriptionFont: descFont ?? UIFont.systemFont(ofSize: 14.0, weight: .regular)),
                OnboardingItemInfo(informationImage: thirdScreenImg,
                                   title: "Profile",
                                   description: "Enter your personal info to use the app",
                                   pageIcon: activeImg,
                                   color: bgThree,
                                   titleColor: textColor,
                                   descriptionColor: textColor,
                                   titleFont: titleFont ?? UIFont.systemFont(ofSize: 54.0, weight: .regular),
                                   descriptionFont: descFont ?? UIFont.systemFont(ofSize: 14.0, weight: .regular))
        ][index]
    
    }

    
    
}
