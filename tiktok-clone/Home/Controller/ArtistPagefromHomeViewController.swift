//
//  ArtistPagefromHomeViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/08.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class ArtistPagefromHomeViewController: UIViewController {
    
    var eachartist: Video!
    
    @IBOutlet weak var ArtistView: UIImageView!
    @IBOutlet weak var ArtistRep: UILabel!
    @IBOutlet weak var ArtistName: UILabel!
    @IBOutlet weak var FollowedNumber: UILabel!
    @IBOutlet weak var ArtistBio: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ArtistView.image = eachartist.ArtistView
        ArtistRep.text = eachartist.ArtistRep
        ArtistName.text = eachartist.username
        FollowedNumber.text = eachartist.FollowedNumber
        ArtistBio.text = eachartist.bio
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
