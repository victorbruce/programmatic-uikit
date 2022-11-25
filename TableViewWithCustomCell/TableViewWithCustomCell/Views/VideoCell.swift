//
//  VideoCell.swift
//  TableViewWithCustomCell
//
//  Created by Victor Bruce on 25/11/2022.
//

import UIKit

class VideoCell: UITableViewCell {
    static let cellId = "VideoCellView"
    
    private let videoImageView: UIImageView = {
        let videoImage = UIImageView()
        videoImage.translatesAutoresizingMaskIntoConstraints = false
        videoImage.layer.cornerRadius = 10
        videoImage.clipsToBounds = true
        videoImage.contentMode = .scaleAspectFit
        return videoImage
    }()
    
    private let videoTitle: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.numberOfLines = 0
        title.adjustsFontSizeToFitWidth = true
        return title
    }()
    
    func configure(with item: Video) {
        videoImageView.image = item.image
        videoTitle.text = item.title
        
        contentView.addSubview(videoImageView)
        contentView.addSubview(videoTitle)
        
        NSLayoutConstraint.activate([
            videoImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            videoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            videoImageView.heightAnchor.constraint(equalToConstant: 80),
            videoImageView.widthAnchor.constraint(equalTo: videoImageView.heightAnchor, multiplier: 16/9),
            
            videoTitle.centerYAnchor.constraint(equalTo: centerYAnchor),
            videoTitle.leadingAnchor.constraint(equalTo: videoImageView.trailingAnchor, constant: 20),
            videoTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            videoTitle.heightAnchor.constraint(equalToConstant: 80)
        ])
    }

}
