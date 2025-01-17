//
//  SearchResultCell.swift
//  iOSChallengeMovieApp
//
//  Created by Muhammed Emin Aydın on 2.06.2021.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
  
  // MARK: - Views
  let posterImage: UIImageView = {
    let iv = UIImageView()
    iv.layer.cornerRadius = 10
    iv.clipsToBounds = true
    iv.backgroundColor = .lightGray
    return iv
  }()
  
  let nameLabel: UILabel = {
    let lbl = UILabel()
    lbl.textColor = .white
    lbl.font = UIFont.boldSystemFont(ofSize: 26)
    return lbl
  }()
  
  let voteAverageLabel: UILabel = {
    let lbl = UILabel()
    lbl.textColor = .white
    lbl.font = UIFont.systemFont(ofSize: 18)
    return lbl
  }()
  
  let dateLabel: UILabel = {
    let lbl = UILabel()
    lbl.textColor = .white
    lbl.font = UIFont.systemFont(ofSize: 18)
    return lbl
  }()
  
  // MARK: - Override functions
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor.rgb(red: 29, green: 29, blue: 29)
    setupViews()
  }
  
  // MARK: - Add views to subview
  fileprivate func setupViews() {
    addSubview(posterImage)
    posterImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 8, paddingLeft: 8, paddingBottom: 8, paddingRight: 0, width: 125, height: 0)
    
    let detailStackView = UIStackView(arrangedSubviews: [
      nameLabel, voteAverageLabel, dateLabel
      ])
    detailStackView.axis = .vertical
    detailStackView.distribution = .fillEqually
    
    addSubview(detailStackView)
    detailStackView.anchor(top: topAnchor, left: posterImage.rightAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 32, paddingLeft: 16, paddingBottom: 32, paddingRight: 8, width: 0, height: 0)
  }
  
  // MARK: - Default initializer
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
