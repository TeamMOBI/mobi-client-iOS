//
//  PlaceCollectionViewCell.swift
//  Mobi
//
//  Created by 김인영 on 5/10/24.
//

import UIKit
import SnapKit

class PlaceCollectionViewCell: UICollectionViewCell {
    
    private let placeImageView = UIImageView()
    private let nameLabel = UILabel()
    private let locationImageView = UIImageView()
    private let locationDetailLabel = UILabel()
    private let populationView = UIView()
    private let populationLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        placeImageView.layer.cornerRadius = 8
        nameLabel.font = .font(.semibold, ofSize: 16)
        nameLabel.textColor = .white
        locationDetailLabel.font = .font(.regular, ofSize: 12)
        locationDetailLabel.textColor = .gray03
        populationView.backgroundColor = .lightGray
        populationView.layer.cornerRadius = 25
        populationView.layer.masksToBounds = true
        populationLabel.font = .font(.semibold, ofSize: 14)
    }
    
    private func setLayout() {
        backgroundColor = .black
        let locationContainerView = UIView()
        let dividerBottomView = UIView()
        dividerBottomView.backgroundColor = .gray05

        contentView.addSubviews(placeImageView, nameLabel, locationContainerView, populationView, dividerBottomView)
        locationContainerView.addSubviews(locationImageView, locationDetailLabel)
        populationView.addSubviews(populationLabel)
        
        placeImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.centerY.equalToSuperview()
            make.size.equalTo(70)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(placeImageView.snp.top).offset(12)
            make.leading.equalTo(placeImageView.snp.trailing).offset(12)
        }
        
        locationContainerView.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(3)
            make.leading.equalTo(nameLabel)
        }
        
        locationImageView.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.size.equalTo(12)
        }
        
        locationDetailLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(locationImageView.snp.trailing).offset(2)
        }
        
        populationView.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(20)
            make.centerY.equalToSuperview()
            make.size.equalTo(50)
        }
        
        populationLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        dividerBottomView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview()
            make.height.equalTo(2)
        }
    }
    
    func configure(model: PlaceModel) {
        placeImageView.image = model.image
        nameLabel.text = model.name
        locationDetailLabel.text = "\(model.meter) • \(model.roadTraffic)"
        populationLabel.text = model.population
    }
}
