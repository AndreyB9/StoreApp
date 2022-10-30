//
//  ReviewCell.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 30.10.2022.
//

import UIKit

class ReviewCell: UICollectionViewCell {
    
    let titleLabel = UILabel(text: "Review Title", font: .boldSystemFont(ofSize: 18), NumberOfLines: 0)
    let authorLabel = UILabel(text: "Author", font: .systemFont(ofSize: 16), NumberOfLines: 0)
    let starsLabel = UILabel(text: "Stars", font: .systemFont(ofSize: 14), NumberOfLines: 0)
    let bodyLabel = UILabel(text: "Review body\nReview body\nReview body", font: .systemFont(ofSize: 15), NumberOfLines: 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        layer.cornerRadius = 16
        clipsToBounds = true
        
        let stackView = VerticalStackView(arrangedSubviews: [
        UIStackView(arrangedSubviews: [
        titleLabel, UIView(), authorLabel
        ]),
        starsLabel,
        bodyLabel
        ], spacing: 12)
        
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
