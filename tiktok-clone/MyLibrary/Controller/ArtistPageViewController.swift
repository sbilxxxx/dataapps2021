//
//  ArtistPageViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/05.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class ArtistPageViewController: UIViewController {
    
    //MARK: Property
    
    @IBOutlet weak var ArtistPageView: UIView!
    
    @IBOutlet weak var ArtistView: UIImageView!
    @IBOutlet weak var ArtistName: UILabel!
    @IBOutlet weak var ArtistRep: UILabel!
    @IBOutlet weak var FollowedNumber: UILabel!
    @IBOutlet weak var ArtistBio: UILabel!
    
    var eachartist: Artist!
    
    var id: Int!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ArtistView.image = eachartist.photo
        ArtistName.text = eachartist.name
        ArtistRep.text = eachartist.place
        FollowedNumber.text = eachartist.followers
        ArtistBio.text = eachartist.bio

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMVSegue" {
            guard let destination = segue.destination as? MVTableViewController else {
                fatalError("")
            }
            destination.id = id
            }
        if segue.identifier == "showSongSegue" {
            guard let destination = segue.destination as? SongTableViewController else {
                fatalError("")
            }
            destination.id = id
            }
        if segue.identifier == "showNewsSegue" {
            guard let destination = segue.destination as? PostTableViewController else {
                fatalError("")
            }
            destination.id = id
            }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
