//
//  OnboardingViewController.swift
//  OnboardingApp
//
//  Created by Mahmut Senbek on 20.02.2023.
//

import UIKit

class OnboardingViewController: UIViewController{
  
    
//MARK: - Properties
    
    var collectionViewVariables = OnboardingViewController.collectionView
    var pageControlVariable = OnboardingViewController.pageControl
    var getStartedButtonVariable = OnboardingViewController.nextButton
    var startButtonVariables = OnboardingViewController.startButton
    var skipButtonVariables = OnboardingViewController.skipButton
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
     //   getStartedButtonHandle()
        view.backgroundColor = .white
        collectionViewVariables.delegate = self
        collectionViewVariables.dataSource = self
        
        
    }
    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//MARK: - Helpers

