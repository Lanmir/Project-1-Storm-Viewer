//
//  DetailViewController.swift
//  Project 1 Storm Viewer
//
//  Created by Varshaa vasundra sivakumar on 05/05/24.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage:String?
    var selectedImageindex:Int?
    var totalImage:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picture \(String(describing: selectedImageindex!)) of \(String(describing: totalImage!))"
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
