//
//  Cell.swift
//  OnboardingApp
//
//  Created by Mahmut Senbek on 20.02.2023.
//

import UIKit

class CollectionViewCell : UICollectionViewCell {
    
    //MARK: - Properties
    
     private let cellView : UIView = {
       
        let view = UIView()
        view.backgroundColor = .clear
       
    
    return view
    }()
    
    private let dividerView : UIView = {
        
        let dividerView = UIView()
        dividerView.backgroundColor = .gray.withAlphaComponent(0.5)
        return dividerView
    }()
    
    private let textLabel : UILabel = {
        let label = UILabel()
    
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .left
        label.text = "Title"
        label.font = .systemFont(ofSize: 32, weight: UIFont.Weight.semibold)
        return label
    }()
    
    private let textView : UILabel = {
       
        let textView = UILabel()
        textView.text = "Some Text"
        textView.textColor = .black
        textView.textAlignment = .left
        textView.numberOfLines = 0
        textView.textColor = .lightGray
        textView.font = .systemFont(ofSize: 25, weight: UIFont.Weight.medium)
        return textView
    }()
   
 
    
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layout()
    }
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    private func layout() {
        
        addSubview(cellView)
        cellView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(dividerView)
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
        
            cellView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 0),
            cellView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            cellView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: 0),
            cellView.heightAnchor.constraint(equalToConstant: (contentView.frame.size.height) / 2),
            
         
            textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            textLabel.topAnchor.constraint(equalTo:cellView.bottomAnchor, constant: 20),
            
            textView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 10),
            textView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            textView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
           // textView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
            dividerView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 3),
            dividerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            dividerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            dividerView.widthAnchor.constraint(equalToConstant: contentView.frame.size.width - 10),
            dividerView.heightAnchor.constraint(equalToConstant: 0.5)
            
           
        ])
        
    }
    
}