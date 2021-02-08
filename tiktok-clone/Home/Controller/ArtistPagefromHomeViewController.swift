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
    
    @IBOutlet var ArtistPageFromHome: UIView!
    
    @IBOutlet weak var MVTableView: UIView!
    @IBOutlet weak var SongTableView: UIView!
    @IBOutlet weak var PostTable: UIView!
    
    @IBOutlet weak var followbutton: UIButton!
    var switchflag: Bool = true
    
    
    var containers: Array<UIView> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ArtistView.image = eachartist.ArtistView
        ArtistRep.text = eachartist.ArtistRep
        ArtistName.text = eachartist.username
        FollowedNumber.text = eachartist.FollowedNumber
        ArtistBio.text = eachartist.bio
        
        containers = [MVTableView, SongTableView, PostTable]
        ArtistPageFromHome.addSubview(MVTableView)
        
        followbutton.layer.cornerRadius = 15
        self.followbutton.layer.borderWidth = 1
        followbutton.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        followbutton.layer.borderColor = UIColor(red: 239/255, green: 139/255, blue: 59/255, alpha: 1).cgColor
        followbutton.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
        followbutton.setTitle("フォロー", for: .normal)
        

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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMVSegue" {
            guard let destination = segue.destination as? MVTableViewController else {
                fatalError("Failed to prepare DetailViewController.")
            }
            destination.id = 4545
            
        }
        if segue.identifier == "showSongSegue" {
            guard let destination = segue.destination as? SongTableViewController else {
                fatalError("Failed to prepare DetailViewController.")
            }
            destination.id = 4545
        }
        if segue.identifier == "showPostSegue" {
            guard let destination = segue.destination as? PostTableViewController else {
                fatalError("Failed to prepare DetailViewController.")
            }
            destination.id = 4545
        }
    }
    
    
    //MARK: Action
    
    @IBAction func changeTableVew(_ sender: UISegmentedControl) {
        let currentTableView = containers[sender.selectedSegmentIndex]
        ArtistPageFromHome.bringSubviewToFront(currentTableView)
    }
    
    @IBAction func changeColor(_ sender: Any) {
        if switchflag {
            self.followbutton.layer.cornerRadius = 15
            self.followbutton.backgroundColor = UIColor(red: 239/255, green: 139/255, blue: 59/255, alpha: 1)
            self.followbutton.setTitleColor(UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1), for: .normal)
            self.followbutton.setTitle("フォロー済", for: .normal)
            switchflag = false
        }else{
            switchflag = true
            self.followbutton.layer.cornerRadius = 15
            self.followbutton.layer.borderWidth = 1
            self.followbutton.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
            self.followbutton.layer.borderColor = UIColor(red: 239/255, green: 139/255, blue: 59/255, alpha: 1).cgColor
            self.followbutton.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1), for: .normal)
            self.followbutton.setTitle("フォロー", for: .normal)
        }
    }
    

}
