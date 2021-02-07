//
//  ArtistPageViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/05.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class ArtistPageViewController: UIViewController{
    
    
    
    //MARK: Property
    
    @IBOutlet weak var ArtistPageView: UIView!
    
    @IBOutlet weak var MVContainer: UIView!
    @IBOutlet weak var SongContainer: UIView!
    @IBOutlet weak var PostContainer: UIView!
    
    
    @IBOutlet weak var ArtistView: UIImageView!
    @IBOutlet weak var ArtistName: UILabel!
    @IBOutlet weak var ArtistRep: UILabel!
    @IBOutlet weak var FollowedNumber: UILabel!
    @IBOutlet weak var ArtistBio: UILabel!
    
    var containers: Array<UIView> = []
    
    
    var eachartist: Artist!
    
    var id: Int!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ArtistView.image = eachartist.mainphoto
        ArtistName.text = eachartist.name
        ArtistRep.text = eachartist.place
        FollowedNumber.text = eachartist.followers
        ArtistBio.text = eachartist.bio
        
        containers = [MVContainer, SongContainer, PostContainer]
        ArtistPageView.bringSubviewToFront(MVContainer)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMVSegue" {
            guard let destination = segue.destination as? MVTableViewController else {
                fatalError("Failed to prepare DetailViewController.")
            }
            destination.id = id
        }
        if segue.identifier == "showSongSegue" {
            guard let destination = segue.destination as? SongTableViewController else {
                fatalError("Failed to prepare DetailViewController.")
            }
            destination.id = id
        }
        if segue.identifier == "showPostSegue" {
            guard let destination = segue.destination as? PostTableViewController else {
                fatalError("Failed to prepare DetailViewController.")
            }
            destination.id = id
        }
    }

    
    //MARK: Action
    
    @IBAction func changeTableVew(_ sender: UISegmentedControl) {
        let currentTableView = containers[sender.selectedSegmentIndex]
        ArtistPageView.bringSubviewToFront(currentTableView)
    }
    
}
