//
//  OnboardingViewModel.swift
//  OnboardingApp
//
//  Created by Mahmut Senbek on 20.02.2023.
//

import UIKit

extension OnboardingViewController :  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout   {
    
    //MARK: - CollectionView Delegates
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return OnboardingViewController.pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.configureCell(page: OnboardingViewController.pages[indexPath.item])
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width, height: view.frame.size.height)
      
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControlVariable.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
       // print(Int(scrollView.contentOffset.x) / Int(scrollView.frame.width))
        if pageControlVariable.currentPage == OnboardingViewController.pages.count - 1  {
            
            getStartedButtonVariable.setTitle("Start", for: UIControl.State.normal)
        }else {
            getStartedButtonVariable.isHidden = false
        }
    }
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {

        pageControlVariable.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
     
    }
  
    
    
   
    
    
    //MARK: - Selectors
    
    @objc func pageControlHandle(_ sender : Any) {
        let pc = sender as! UIPageControl
       
        print(pc.currentPage)
        
        collectionViewVariables.scrollToItem(at: IndexPath(item: pc.currentPage, section: 0), at: .left, animated: true)
      
        
        
    }
    @objc func getStartedButtonClicked(_ sender : Any) {
      
        
       
        
        if pageControlVariable.currentPage < OnboardingViewController.pages.count {
            collectionViewVariables.scrollToNextItem()
            
        }
        if pageControlVariable.currentPage == OnboardingViewController.pages.count - 2  {
            
            getStartedButtonVariable.setTitle("Start", for: UIControl.State.normal)
        }else {
            getStartedButtonVariable.isHidden = false
        }
        
        if getStartedButtonVariable.currentTitle == "Start" {
            getStartedButtonVariable.addTarget(self, action: #selector(startButtonClicked), for: UIControl.Event.touchUpInside)
        }
       
   
    }
   @objc func startButtonClicked() {
        
        let pushVC = UINavigationController(rootViewController: ViewController())
       pushVC.modalTransitionStyle = .coverVertical
       pushVC.modalPresentationStyle = .fullScreen
       self.present(pushVC, animated: true)
    }
    
    @objc func skipButtonClicked() {
        
        let pushVC = UINavigationController(rootViewController: ViewController())
       pushVC.modalTransitionStyle = .coverVertical
       pushVC.modalPresentationStyle = .fullScreen
       self.present(pushVC, animated: true)
        
    }
    
    
    
    func style() {
   
        view.addSubview(collectionViewVariables)
        view.addSubview(pageControlVariable)
        view.addSubview(getStartedButtonVariable)
        view.addSubview(skipButtonVariables)
        
        collectionViewVariables.translatesAutoresizingMaskIntoConstraints = false
        pageControlVariable.translatesAutoresizingMaskIntoConstraints = false
        getStartedButtonVariable.translatesAutoresizingMaskIntoConstraints = false
        skipButtonVariables.translatesAutoresizingMaskIntoConstraints = false
        
        skipButtonVariables.addTarget(self, action: #selector(skipButtonClicked), for: UIControl.Event.touchUpInside)
        
        
        pageControlVariable.numberOfPages = OnboardingViewController.pages.count
        
        pageControlVariable.addTarget(self, action: #selector(pageControlHandle), for: UIControl.Event.touchUpInside)
        getStartedButtonVariable.addTarget(self, action: #selector(getStartedButtonClicked), for: UIControl.Event.touchUpInside)
        
        
        NSLayoutConstraint.activate([
        
            collectionViewVariables.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            collectionViewVariables.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            view.trailingAnchor.constraint(equalTo: collectionViewVariables.trailingAnchor, constant: 0),
            collectionViewVariables.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -160),
            
           pageControlVariable.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150),
           pageControlVariable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         
           pageControlVariable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
           pageControlVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            getStartedButtonVariable.topAnchor.constraint(equalTo: pageControlVariable.bottomAnchor, constant: 20),
            getStartedButtonVariable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            getStartedButtonVariable.heightAnchor.constraint(equalToConstant: 50),
            getStartedButtonVariable.widthAnchor.constraint(equalToConstant: view.frame.size.width * 0.8),
            
            skipButtonVariables.topAnchor.constraint(equalTo: view.topAnchor, constant: 65),
            view.trailingAnchor.constraint(equalTo: skipButtonVariables.trailingAnchor, constant: 25),
           // skipButtonVariables.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            skipButtonVariables.widthAnchor.constraint(equalToConstant: 50),
            skipButtonVariables.heightAnchor.constraint(equalToConstant: 50)
        
        ])
        
    }
    
}


