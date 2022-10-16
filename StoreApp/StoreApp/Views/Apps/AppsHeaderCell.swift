//
//  AppHeaderAppCell.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 01.10.2022.
//

import UIKit

class AppsHeaderCell: UICollectionViewCell {
    
    let companyLabel = UILabel(text: "Facebook", font: .boldSystemFont(ofSize: 12), NumberOfLines: 1)
    let titileLabel = UILabel(text: "Keeping up with friends is faster than ever", font: .systemFont(ofSize: 24), NumberOfLines: 0)
    let imageView = UIImageView(cornerRadius: 8)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        companyLabel.textColor = .blue
        titileLabel.numberOfLines = 2
        let stackView = VerticalStackView(arrangedSubviews: [
        companyLabel,
        titileLabel,
        imageView
        ], spacing: 12)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 16, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
