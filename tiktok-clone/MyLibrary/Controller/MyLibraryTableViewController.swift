//
//  MyLibraryTableViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/05.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class MyLibraryTableViewController: UITableViewController {
    
    var artists : [Artist] = []
    
    @IBOutlet weak var MyLibraryTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        MyLibraryTableView.delegate = self
        MyLibraryTableView.dataSource = self
        loadArtistData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return artists.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "ArtistListCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MyLibraryTableViewCell  else {
               fatalError("The dequeued cell is not an instance of MealTableViewCell.")
           }
        
        // Fetches the appropriate meal for the data source layout.
        let artist = artists[indexPath.row]
        
        cell.ArtistName.text = artist.name
        cell.ArtistView.image = artist.sqrtphoto
        // Configure the cell...

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue" {
            if let indexPath = MyLibraryTableView.indexPathForSelectedRow {
                guard let destination = segue.destination as? ArtistPageViewController else {
                    fatalError("Failed to prepare DetailViewController.")
                }
                
                destination.eachartist = artists[indexPath.row]
                destination.id = indexPath.row
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
            if let indexPath = MyLibraryTableView.indexPathForSelectedRow{
                MyLibraryTableView.deselectRow(at: indexPath, animated: true)
            }
        }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func loadArtistData() {
        
        let Artist1Main = UIImage(named: "Artist1_Main")
        let Artist2Main = UIImage(named: "Artist2_Main")
        let Artist3Main = UIImage(named: "Artist3_Main")
        
        let Artist1Sqrt = UIImage(named: "Artist1_Sqrt")
        let Artist2Sqrt = UIImage(named: "Artist2_Sqrt")
        let Artist3Sqrt = UIImage(named: "Artist3_Sqrt")
        
        let Artist1Bio = "初めまして！僕は京都市を拠点とするトラックメイカーのBenjaminです！主にlofiを作っていて、将来的にはリリックを書いて曲を出すのが目標です！今度オンラインライブをやるんでみてください！"
        
        let Artist2Bio = "こんにちは！鈴木春太郎です。シンガーソングライターを目指してます！"
        
        let Artist3Bio = "こんにちは、財満ばい。たまに博多弁ば話しよるらしかけど、普段は標準語ばい。よろしくです。"
        
        guard let Benjamin = Artist(name:"Artist1", sqrtphoto: Artist1Sqrt, place: "京都市", followers: "フォロワー数 126人", bio: Artist1Bio, mainphoto: Artist1Main)else{
            fatalError("Unable to instance Benjamin")
        }
        guard let Shuntaro = Artist(name:"Artist2", sqrtphoto: Artist2Sqrt, place: "仙台市", followers: "フォロワー数 94人", bio: Artist2Bio, mainphoto: Artist2Main)else{
            fatalError("Unable to instance Benjamin")
        }
        guard let Zaima = Artist(name:"Artist3", sqrtphoto: Artist3Sqrt, place: "久留米市", followers: "フォロワー数 97人", bio: Artist3Bio, mainphoto: Artist3Main)else{
            fatalError("Unable to instance Benjamin")
        }
        
        
        
        artists += [Benjamin, Shuntaro, Zaima]
    }


}
