//
//  SignUpLogoAnimationCell.swift
//  AccelerateApp
//
//  Created by Akash on 01/05/20.
//  Copyright © 2020 Akash. All rights reserved.
//

import UIKit

class SignUpLogoAnimationCell: UITableViewCell {
    fileprivate var currentPage: Int = 0
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.register(UINib(nibName: String(describing: SignUpAnimationCell.self) , bundle: nil), forCellWithReuseIdentifier: String(describing: SignUpAnimationCell.self))
        pageControl.hidesForSinglePage = true

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension SignUpLogoAnimationCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SignUpAnimationCell.self), for: indexPath)
        return firstCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: self.collectionView.frame.width, height: self.collectionView.frame.height)
       }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
           let pageSide = self.collectionView.frame.width
           let offset = scrollView.contentOffset.x
           currentPage = Int(floor((offset - pageSide / 2) / pageSide) + 1)
           pageControl.currentPage = currentPage
       }
}
