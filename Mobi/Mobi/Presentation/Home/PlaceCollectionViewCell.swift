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
        locationImageView.image = .Icn.location
        locationDetailLabel.font = .font(.regular, ofSize: 12)
        locationDetailLabel.textColor = .gray03
        populationView.backgroundColor = .lightGray
        populationView.layer.cornerRadius = 25
        populationView.layer.masksToBounds = true
        populationLabel.font = .font(.semibold, ofSize: 14)
        populationLabel.numberOfLines = 0
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
            make.bottom.equalTo(placeImageView.snp.bottom).offset(-12)
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
        if let populationLevel = PlaceCollectionViewCell.PopulationLevel(rawValue: model.population) {
            setBannerLayout(populationLevel)
        } else {
            populationLabel.text = "정보 없음"
            populationView.backgroundColor = .gray
            populationLabel.textColor = .white
        }
    }
    
    private func setBannerLayout(_ state: PopulationLevel) {
        populationView.backgroundColor = state.backgroundColor
        populationLabel.text = state.title
        populationLabel.textColor = state.textColor
    }
}
extension PlaceCollectionViewCell {
    public enum PopulationLevel: String, CaseIterable {
        case 여유 = "여유"
        case 보통 = "보통"
        case 약간붐빔 = "약간붐빔"
        case 붐빔 = "붐빔"
        
        var title: String {
            return self.rawValue
        }
        
        var backgroundColor: UIColor {
            switch self {
            case .여유:
                return .green
            case .보통:
                return .yellow
            case .약간붐빔:
                return .orange
            case .붐빔:
                return .red
            }
        }
        
        var textColor: UIColor {
            switch self {
            case .여유:
                return .black
            case .보통:
                return .black
            case .약간붐빔:
                return .black
            case .붐빔:
                return .black
            }
        }
    }
}
