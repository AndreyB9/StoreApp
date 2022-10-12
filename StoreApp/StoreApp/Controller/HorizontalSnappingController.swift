//
//  HorizontalSnappingController.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 12.10.2022.
//

import UIKit

class HorizontalSnappingController: UICollectionViewController {
    init() {
        let layout = BetterSnappingLayout()
        layout.scrollDirection = .horizontal
        super.init(collectionViewLayout: layout)
        collectionView.decelerationRate = .fast
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class SnapingLayout: UICollectionViewFlowLayout {
    
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        guard let collectionView = self.collectionView else {
            return super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity)
        }
        let parent = super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity)
        let itemWidth = collectionView.frame.width - 30
        let itemSpace = itemWidth + minimumLineSpacing
        var currentItemIdx = round(collectionView.contentOffset.x / itemSpace)
        let vX = velocity.x
        if vX > 0 {
            currentItemIdx += 1
        } else if vX < 0 {
            currentItemIdx -= 1
        }
        
        let nearestPageOffset = currentItemIdx * itemSpace
        return CGPoint(x: nearestPageOffset, y: parent.y)
    }
    
}
