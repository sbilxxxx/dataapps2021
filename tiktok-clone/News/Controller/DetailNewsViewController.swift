//
//  DetailNewsViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/05.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class DetailNewsViewController: UIViewController {
    
    //MARK: Property
    @IBOutlet weak var ArtistView: UIImageView!
    @IBOutlet weak var ArtistName: UILabel!
    @IBOutlet weak var NewsTitle: UILabel!
    @IBOutlet weak var NewsBody: UILabel!
    
    var eachnews: News!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ArtistView.image = eachnews.artistview
        ArtistName.text = eachnews.artist
        NewsTitle.text = eachnews.title
        NewsBody.text = eachnews.body
    }
}
