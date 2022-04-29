//
//GenerateViewController.swift
//  IOS-Swift-ShareContents
//
//  Created by Dilip Kumar on 28/04/22.
//

import UIKit

class GenerateViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var pdf = [String] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        pdf = ["generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf","generated-pdf-1.pdf"]
        
    }
    
}
    extension GenerateViewController: UICollectionViewDelegate, UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return pdf.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GenerateCollectionViewCell
                    cell.layer.cornerRadius = 5.0
                    cell.layer.borderWidth = 0.5
                    cell.layer.borderColor = UIColor.lightGray.cgColor
                    cell.layer.shadowColor = UIColor.lightGray.cgColor
                    cell.layer.shadowOffset = CGSize(width: 0, height: 0)
                    cell.layer.shadowRadius = 0.9
                    cell.layer.shadowOpacity = 50
                    cell.layer.masksToBounds = false //<-
                    
            cell.label.text = pdf[indexPath.row]
            
            return cell
        }
        
    }
   
