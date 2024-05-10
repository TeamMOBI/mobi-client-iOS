//
//  HomeViewController.swift
//  Mobi
//
//  Created by 김인영 on 5/9/24.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    private let naviBar = UIView()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .black
        collectionView.isScrollEnabled = true
        collectionView.isPagingEnabled = true
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        setDelegate()
        setUI()
        setLayout()
    }

    private func registerCells() {
        collectionView.register(PlaceCollectionViewCell.self, forCellWithReuseIdentifier: PlaceCollectionViewCell.className)
    }
    
    private func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func setUI() {
        naviBar.backgroundColor = .clear
    }

    private func setLayout() {
        view.backgroundColor = .black
        view.addSubviews(naviBar, collectionView)
        
        let mobiLogoImageView = UIImageView(image: .mobiLogoSmall)
        naviBar.addSubview(mobiLogoImageView)
        naviBar.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(56)
        }
        
        mobiLogoImageView.snp.makeConstraints { make in
            make.leading.equalTo(10)
            make.centerY.equalToSuperview()
        }

        collectionView.snp.makeConstraints { make in
            make.top.equalTo(naviBar.snp.bottom) /// navigation 추가시 변경
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testDummy.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PlaceCollectionViewCell.className, for: indexPath) as? PlaceCollectionViewCell else { return  UICollectionViewCell() }
        cell.configure(model: testDummy[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 102)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}
