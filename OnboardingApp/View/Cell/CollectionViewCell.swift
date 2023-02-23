//
//  Cell.swift
//  OnboardingApp
//
//  Created by Mahmut Senbek on 20.02.2023.
//

import UIKit
import Lottie

class CollectionViewCell : UICollectionViewCell, UITextViewDelegate {
    
    //MARK: - Properties
    
    var animation = LottieAnimationView()
    
     private let cellView : LottieAnimationView = {
       
        let view = LottieAnimationView()
         view.backgroundColor = .white
       
    
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
        label.font = .systemFont(ofSize: 30, weight: UIFont.Weight.semibold)
        return label
    }()
    
    private let textView : UITextView = {
       
        let textView = UITextView(frame: .zero)
        textView.text = "Some Text"
        textView.textColor = .black
        textView.textAlignment = .left
        textView.textColor = .lightGray
        textView.contentInsetAdjustmentBehavior = .automatic
        textView.textAlignment = .center
        textView.font = .systemFont(ofSize: 23, weight: UIFont.Weight.medium)
      
        textView.backgroundColor = .secondarySystemBackground
        textView.textColor = .secondaryLabel
        textView.font = UIFont.preferredFont(forTextStyle: .body)
        textView.layer.cornerRadius = 20
        textView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        textView.layer.shadowColor = UIColor.black.cgColor
        textView.layer.shadowOffset = CGSize(width: 0.75, height: 0.75)
        textView.layer.shadowOpacity = 0.4
        textView.layer.shadowRadius = 20
        textView.layer.masksToBounds = false
        textView.layer.cornerRadius = 20
        textView.textContainer.maximumNumberOfLines = 10
        textView.textContainer.lineBreakMode = .byTruncatingTail
        return textView
    }()
    
   
   
 
    
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layout()
        textView.delegate = self
 
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
            
         
            textLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            textLabel.topAnchor.constraint(equalTo:cellView.bottomAnchor, constant: 100),
            
            textView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 10),
            textView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            textView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
          
            
            dividerView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 3),
            dividerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            dividerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            dividerView.widthAnchor.constraint(equalToConstant: contentView.frame.size.width - 10),
            dividerView.heightAnchor.constraint(equalToConstant: 0.5),
            
            
            
           
        ])
        
    }
    
    
    func configureCell( page: Page) {
        animation = LottieAnimationView(name: page.animationName)
        animation.frame = CGRect(x: 0, y: 0, width: self.frame.width  , height: self.frame.height * 0.75)
        animation.animationSpeed = 0.7
        animation.loopMode = .loop
        animation.clipsToBounds = true
        animation.play()
       addSubview(animation)
        
        self.textLabel.text = page.title
        self.textView.text = page.description
    }
}
