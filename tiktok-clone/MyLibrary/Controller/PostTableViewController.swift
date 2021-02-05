//
//  PostTableViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/05.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class PostTableViewController: UITableViewController {
    
    @IBOutlet var PostTableView: UITableView!
    
    var posts = [Post]()
    var id: Int!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        PostTableView.delegate = self
        PostTableView.dataSource = self

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        loadPosts()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "MyLibraryModel"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PostTableViewCell  else {
               fatalError("The dequeued cell is not an instance of MealTableViewCell.")
           }
        
        let post = posts[indexPath.row]
        
        cell.PostDate.text = post.date
        cell.PostTitle.text = post.title
        

        // Configure the cell...

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue" {
            if let indexPath = PostTableView.indexPathForSelectedRow {
                guard let destination = segue.destination as? DetailPostViewController else {
                    fatalError("Failed to prepare DetailViewController.")
                }
                
                destination.eachpost = posts[indexPath.row]
                destination.id = indexPath.row
            }
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
    
    private func loadPosts() {

        if id == 0{
            let Benjamin_LiveNews1 = "2/11にオンラインライブを行います！僕にとって初めてのオンラインライブですが間違いなく盛り上がるのでぜひ見に来てください！チケットは下のチケット購入蘭から購入してください！皆さんの参加をお待ちしております！グッズも販売するのでそちらもぜひ！"
            
        
            let Benjamin_NewSong1 = "本日2/4に新曲をリリースしました！曲のタイトルは'国分町に愛はなかった'です！この曲には寂しさを埋め合わせるための行為が更なる寂しさを生むというこの時期あるあるな感情をトラックにしました！下の再生ボタンから聞いてみてください！"
    
            guard let News1 = Post(date:"2/9/2021 13:15", title: "ライブのお知らせ", body:Benjamin_LiveNews1, buybutton: "¥1000 購入する")else{
                fatalError("Unable to instance Benjamin")
            }
            
            guard let News2 = Post(date:"2/6/2021 18:26", title: "新曲のお知らせ！", body: Benjamin_NewSong1, buybutton: "")else{
                fatalError("Unable to instance Benjamin")
            }
            
            posts += [News1, News2]
        }
        if id == 1{
            let ShuntaroNews1 = "1/16にアーケードでストリートライブやるので皆さん来てください！"
            
                    /*
            let Benjamin_NewSong1 = "本日2/4に新曲をリリースしました！曲のタイトルは'国分町に愛はなかった'です！この曲には寂しさを埋め合わせるための行為が更なる寂しさを生むというこの時期あるあるな感情をトラックにしました！下の再生ボタンから聞いてみてください！"
            */
            guard let News1 = Post(date:"2/9/2021 13:15", title: "告知！", body:ShuntaroNews1, buybutton: "")else{
                fatalError("Unable to instance Benjamin")
            }
            /*
            guard let NewSongNews1 = Post(date:"2/6/2021 18:26", title: "新曲のお知らせ！")else{
                fatalError("Unable to instance Benjamin")
            }
            */
            posts += [News1]
        }
        if id == 2{
            let ZaimaNews1 = "今度新曲を出します！こうご期待...！"
            
                    /*
            let Benjamin_NewSong1 = "本日2/4に新曲をリリースしました！曲のタイトルは'国分町に愛はなかった'です！この曲には寂しさを埋め合わせるための行為が更なる寂しさを生むというこの時期あるあるな感情をトラックにしました！下の再生ボタンから聞いてみてください！"
            */
            guard let News1 = Post(date:"2/9/2021 13:15", title: "新曲出すよ！", body:ZaimaNews1, buybutton: "")else{
                fatalError("Unable to instance Benjamin")
            }
            /*
            guard let NewSongNews1 = Post(date:"2/6/2021 18:26", title: "新曲のお知らせ！")else{
                fatalError("Unable to instance Benjamin")
            }
            */
            posts += [News1]
        }

    }


}
