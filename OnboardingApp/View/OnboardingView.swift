//
//  OnboardingView.swift
//  OnboardingApp
//
//  Created by Mahmut Senbek on 20.02.2023.
//

import UIKit

extension OnboardingViewController {
    
   static let collectionView : UICollectionView = {
       let layout = UICollectionViewFlowLayout()
       let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
       collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .clear
       collectionView.isPagingEnabled = true
       
       
       collectionView.alwaysBounceHorizontal = true
       layout.scrollDirection = .horizontal
      collectionView.collectionViewLayout = layout
      collectionView.showsHorizontalScrollIndicator = false
      
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
        pageControl.clipsToBounds = true
        return pageControl
        
    }()
    
    static let nextButton : UIButton = {
        
        let button = UIButton()
        button.setTitle("Next", for: UIControl.State.normal)
        button.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.contentMode = .scaleToFill
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.layer.cornerRadius = 20
      
        return button
    }()
    
    static let startButton : UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: UIControl.State.normal)
        button.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.contentMode = .scaleToFill
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.layer.cornerRadius = 20
        return button
    }()
    
    static let skipButton : UIButton = {
        let button = UIButton(type: .system)
      //  button.setImage(UIImage(systemName: "xmark.circle"), for: UIControl.State.normal)
       button.setTitle("Skip", for: UIControl.State.normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.tintColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        button.titleLabel?.numberOfLines = 0
      //  button.contentMode = .scaleToFill
        button.clipsToBounds = true
     // button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        return button
        
    }()
    
    

}

