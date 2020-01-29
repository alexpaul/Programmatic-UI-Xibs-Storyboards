# Programmatic-UI-Xibs-Storyboards

Mixiing programmatic UI code with storyboards and xibs.

#### Registering a custom cell in code 

```swift 
// register collection view cell
podcastView.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "podcastCell")
```

#### Registering a xib file for creating a custom cell in code 

```swift 
// register collection view cell using xib/nib
podcastView.collectionView.register(UINib(nibName: "PodcastCell", bundle: nil), forCellWithReuseIdentifier: "podcastCell")
```
