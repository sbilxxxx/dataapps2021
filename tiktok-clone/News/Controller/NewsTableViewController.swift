//
//  NewsTableViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/05.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    //MARK: Property
    @IBOutlet var NewsTableView: UITableView!
    
    var news : [News] = []
    var id: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // セルの高さの見積もり値
        self.tableView.estimatedRowHeight = 150
                
        // セルの制約を基に計算された高さを代入
        self.tableView.rowHeight = UITableView.automaticDimension
        
        NewsTableView.dataSource = self
        NewsTableView.delegate = self
        
        loadNews()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "NewsCell"
        
        guard let cell = NewsTableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? NewsTableViewCell  else {
               fatalError("The dequeued cell is not an instance of MealTableViewCell.")
           }
        
        let news_contents = news[indexPath.row]
        
        cell.ArtistName.text = news_contents.artist
        cell.ArtistView.image = news_contents.artistview
        cell.NewsTitle.text = news_contents.title
        cell.NewsBody.text = news_contents.body

        // Configure the cell...

        return cell
    }
    
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        giveData = news[indexPath.row]
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue" {
            if let indexPath = NewsTableView.indexPathForSelectedRow {
                guard let destination = segue.destination as? DetailNewsViewController else {
                    fatalError("Failed to prepare DetailViewController.")
                }
                
                destination.eachnews = news[indexPath.row]
                
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
            if let indexPath = NewsTableView.indexPathForSelectedRow{
                NewsTableView.deselectRow(at: indexPath, animated: true)
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
    
    private func loadNews() {
        
        //MARK: Property
        let Artist1Sqrt = UIImage(named: "Artist1_Sqrt")
        let Artist2Sqrt = UIImage(named: "Artist2_Sqrt")
        let Artist3Sqrt = UIImage(named: "Artist3_Sqrt")
        
        
        let Artist1News1 = "2/11にオンラインライブを行います！僕にとって初めてのオンラインライブですが間違いなく盛り上がるのでぜひ見に来てください！チケットは下のチケット購入蘭から購入してください！皆さんの参加をお待ちしております！グッズも販売するのでそちらもぜひ！"
        
        let Artist1News2 = "本日2/4に新曲をリリースしました！曲のタイトルは'国分町に愛はなかった'です！この曲には寂しさを埋め合わせるための行為が更なる寂しさを生むというこの時期あるあるな感情をトラックにしました！下の再生ボタンから聞いてみてください！"
        
        let Artist2News1 = "1/16にアーケードでストリートライブやるので皆さん来てください！"
        
        let Artist3News1 = "今度新曲を出します！こうご期待...！"
        
        
        guard let news1 = News(artist: "Artist1", artistview: Artist1Sqrt, title: "ライブのお知らせ！", body: Artist1News1) else {
            fatalError("")
        }
        guard let news2 = News(artist: "Artist2", artistview: Artist2Sqrt, title: "告知！", body: Artist2News1) else {
            fatalError("")
        }
        guard let news3 = News(artist: "Artist3", artistview: Artist3Sqrt, title: "新曲出すよ！", body: Artist3News1) else {
            fatalError("")
        }
        guard let news4 = News(artist: "Artist1", artistview: Artist1Sqrt, title: "新曲のお知らせ！", body: Artist1News2) else {
            fatalError("")
        }
        
        news += [news1, news2, news3, news4]
        
    }

}
