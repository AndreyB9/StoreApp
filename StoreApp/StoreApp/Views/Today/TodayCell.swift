//
//  TodayCell.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 20.03.2023.
//

import UIKit

class TodayCell: UICollectionViewCell {
    
    var todayItem: TodayItem! {
        didSet {
            categoryLabel.text = todayItem.category
            titleLabel.text = todayItem.title
            imageView.image = todayItem.image
            descriptionLabel.text = todayItem.description
            backgroundColor = todayItem.backgroundColor
        }
    }
    let categoryLabel = UILabel(text: "LIFE HACK", font: .boldSystemFont(ofSize: 20), NumberOfLines: 0)
    let titleLabel = UILabel(text: "Utilizing your Time", font: .boldSystemFont(ofSize: 26), NumberOfLines: 0)
    
    
    let imageView = UIImageView(image: #imageLiteral(resourceName: "garden"))
    
    let descriptionLabel = UILabel(text: "All the tools and apps you need to intelligently organize your life the right way.", font: .systemFont(ofSize: 16), NumberOfLines: 3)
    
    var topConstraint: NSLayoutConstraint!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        clipsToBounds = true
        layer.cornerRadius = 16
        
        imageView.contentMode = .scaleAspectFill
        
        let imageContainerView = UIView()
        imageContainerView.addSubview(imageView)
        imageView.centerInSuperview(size: .init(width: 240, height: 240))
        let stackView = VerticalStackView(arrangedSubviews: [categoryLabel, titleLabel, imageContainerView, descriptionLabel], spacing: 8)
        addSubview(stackView)
        stackView.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: (.init(top: 0, left: 24, bottom: 24, right: 24)))
        self.topConstraint = stackView.topAnchor.constraint(equalTo: topAnchor, constant: 24)
        self.topConstraint.isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
