import UIKit

private let reuseIdentifier = "ImageCell"

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }


    lazy var imageModel = {
        return ImageModel.sharedInstance()
    }()
    
    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imageModel.numberOfImages()
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CollectionViewCell {
            
            cell.imageView.image = self.imageModel.getImageWith(indexPath.row)
            
            return cell
        }else{
            fatalError("Could not dequeue cell")
        }
    }


}
