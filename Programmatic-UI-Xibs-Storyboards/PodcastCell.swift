//
//  PodcastCell.swift
//  Programmatic-UI-Xibs-Storyboards
//
//  Created by Alex Paul on 1/29/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit
import ImageKit

class PodcastCell: UICollectionViewCell {
  
  @IBOutlet weak var collectionNameLabel: UILabel!
  @IBOutlet weak var artistNameLabel: UILabel!
  @IBOutlet weak var podcastImageView: UIImageView!
  
  
  public func configureCell(for podcast: Podcast) {
    collectionNameLabel.text = podcast.collectionName
    artistNameLabel.text = podcast.artistName
    podcastImageView.getImage(with: podcast.artworkUrl100) { [weak self] (result) in
      switch result {
      case .failure:
        break
      case .success(let image):
        DispatchQueue.main.async {
          self?.podcastImageView.image = image
        }
      }
    }
  }
  
    
}
