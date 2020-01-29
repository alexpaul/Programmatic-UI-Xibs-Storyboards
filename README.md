# Programmatic-UI-Xibs-Storyboards

Mixing programmatic UI code with storyboards and xibs.

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

#### Setting up a collectin view in code

> NB: Reminder, a colleciton view must have a layout. 

```swift 
// collection view
public lazy var collectionView: UICollectionView = {
  let layout = UICollectionViewFlowLayout()
  layout.scrollDirection = .vertical
  layout.itemSize = CGSize(width: 400, height: 400)
  let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
  cv.backgroundColor = .yellow
  return cv
}()
```


#### Getting a view controller instance from storyboard 

```swift 
guard let podcastDetailController = podcastDetailStoryboard.instantiateViewController(identifier: "PodcastDetailController") as? PodcastDetailController else {
  fatalError("could not downcast to PodcastDetailController")
}
```


#### Segue via push segue to a view controller 

```swift 
navigationController?.pushViewController(podcastDetailController, animated: true)
```
