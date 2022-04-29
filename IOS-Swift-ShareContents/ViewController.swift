//
//  ViewController.swift
//  IOS-Swift-ShareContents
//
//  Created by Dilip Kumar on 28/04/22.
//

import UIKit

class ViewController: UIViewController , UIDocumentInteractionControllerDelegate {

    final private let stringWithLink = "Please download this app here in App Store : https://www.apple.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func sahreImageBtn(_ sender: Any) {
        guard let image = UIImage(named: "shareMe") else {
            print("image loading error!")
            return
        }
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityController.completionWithItemsHandler = { (nil, completed, _, error) in
            if completed {
                print("Completed!")
            } else {
                print("Canceled!!")
            }
        }
        present(activityController , animated: true) {
            print("Image Presented!")
        }

    }
    
    @IBAction func sharePdfBtn(_ sender: Any) {
        guard let url = Bundle.main.url(forResource: "Invoice", withExtension: "pdf") else {
            print("file loading error!")
            return
        }
        let controller = UIDocumentInteractionController(url: url)
        controller.delegate = self
        controller.presentPreview(animated: true)
    }
    
    func documentInteractionControllerViewControllerForPreview(_ controller: UIDocumentInteractionController) -> UIViewController {
        return self
    }
    
}

