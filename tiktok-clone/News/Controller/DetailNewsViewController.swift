//
//  DetailNewsViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/05.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class DetailNewsViewController: UIViewController {
    
    var alertController: UIAlertController!
    
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
    
    @IBAction func tapButton(_ sender: Any) {
        alert(title: "チケットを購入しますか？\n料金: 1000¥",
                      message: "購入後は登録メールアドレスにリンクが\n送付されます!")
    }
    
    func alert(title:String, message:String) {
            alertController = UIAlertController(title: title,
                                       message: message,
                                       preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "購入する",
                                           style: .default,
                                           handler: nil))
            alertController.addAction(UIAlertAction(title: "キャンセル",
                                                    style: .default,
                                                    handler: nil))
            present(alertController, animated: true)
        }
}
