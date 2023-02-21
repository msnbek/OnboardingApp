//
//  OnboardingView.swift
//  OnboardingApp
//
//  Created by Mahmut Senbek on 20.02.2023.
//

import UIKit

extension OnboardingViewController {
    
   static let collectionView : UICollectionView = {
       
       let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
       collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .clear
       collectionView.isPagingEnabled = true
      collectionView.showsHorizontalScrollIndicator = true
      
        return collectionView
        
    }()
    
    static let pageControl : UIPageControl = {
    
        let pageControl = UIPageControl(frame: .zero)
     
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.pageIndicatorTintColor = .gray
        pageControl.contentMode = .scaleToFill
        pageControl.isUserInteractionEnabled = true
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
        return pageControl
        
    }()
    
    static let startedButton : UIButton = {
        
        let button = UIButton()
        button.setTitle("Get Started", for: UIControl.State.normal)
        button.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.contentMode = .scaleToFill
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.layer.cornerRadius = 20
      
        return button
    }()
    
    

}

