//
//  SearchResultCell.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 11.09.2022.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    let appIconImageView : UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.widthAnchor.constraint(equalToConstant: 64).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 64).isActive = true
        iv.layer.cornerRadius = 12
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "APP NAME"
        return label
    }()
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Photos & Video"
        return label
    }()
    let ratingsLabel: UILabel = {
        let label = UILabel()
        label.text = "9.26m"
        return label
    }()
    
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.layer.cornerRadius = 16
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        return button
    }()
    
    lazy var screenchot1imageView = self.createScreenshotImageView()
    lazy var screenchot2imageView = self.createScreenshotImageView()
    lazy var screenchot3imageView = self.createScreenshotImageView()
    
    func createScreenshotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        return imageView
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        
        
        let infoTopStackView = UIStackView(arrangedSubviews: [
            appIconImageView, VerticalStackView(arrangedSubviews: [nameLabel, categoryLabel, ratingsLabel]), getButton
        ])
        infoTopStackView.spacing = 12
        infoTopStackView.alignment = .center
        
        
        let screenshotStackView = UIStackView(arrangedSubviews: [
        screenchot1imageView, screenchot2imageView, screenchot3imageView
        ])
        
        screenshotStackView.spacing = 12
        screenshotStackView.distribution = .fillEqually
        
        
        let overallStackView = VerticalStackView(arrangedSubviews: [infoTopStackView, screenshotStackView], spacing: 16)
        
        addSubview(overallStackView)
        overallStackView.fillSuperview(padding: .init(top: 16, left: 16, bottom: 16, right: 16))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
