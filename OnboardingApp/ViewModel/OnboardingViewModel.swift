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
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .clear
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width, height: view.frame.size.height)
      
    }
    
    
    
    
    func style() {
       
        view.addSubview(collectionViewVariables)
        view.addSubview(pageControlVariable)
        view.addSubview(getStartedButtonVariable)
        collectionViewVariables.translatesAutoresizingMaskIntoConstraints = false
        pageControlVariable.translatesAutoresizingMaskIntoConstraints = false
        getStartedButtonVariable.translatesAutoresizingMaskIntoConstraints = false
        
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
            getStartedButtonVariable.widthAnchor.constraint(equalToConstant: 150),
            
            
        
        ])
        
    }
    
}
