//
//  ServicosView.swift
//  GreenRun
//
//  Created by Henrique Marques on 31/03/24.
//

import UIKit

class ServicosView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    lazy var servicosCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout.init()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.alwaysBounceVertical = true
        return collectionView
    }()
    
    func setUpView() {
        addSubview(servicosCollectionView)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            self.servicosCollectionView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.servicosCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.servicosCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.servicosCollectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            
        ])
    }

}
