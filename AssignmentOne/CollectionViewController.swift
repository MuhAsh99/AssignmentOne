
import UIKit

private let reuseIdentifier = "CollectCell"

class CollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    
    lazy var imageModel = {
        return ImageModel.sharedInstance()
    }()
    
    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imageModel.imageNames.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CollectionViewCell {
            
            if let name = self.imageModel.imageNames[indexPath.row] as? String{
                cell.imageView.image = self.imageModel.getImageWithName(name)
            }
            
            return cell
        }else{
            fatalError("Could not dequeue cell")
        }
    }
    
}
