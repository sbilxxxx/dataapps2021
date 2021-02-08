//
//  MVTableViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/05.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class MVTableViewController: UITableViewController {
    
    //MARK: Property
    var mvs = [MV]()
    var id: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        loadMVList()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return mvs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "MVCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MVTableViewCell  else {
               fatalError("The dequeued cell is not an instance of MealTableViewCell.")
           }
        
        // Fetches the appropriate meal for the data source layout.
        let mv = mvs[indexPath.row]
        
        cell.MVTitle.text = mv.mvtitle
        cell.MVThumb.image = mv.thumbnail
        // Configure the cell...

        return cell
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
    
    private func loadMVList() {
    
        let MVView = UIImage(named: "camera")
        
        /*
        guard let video1 = MV(mvtitle: "'国分町に愛はなかった'MV", thumbnail: MVView) else {
            fatalError("Unable to instance Benjamin")
        }
        guard let video2 = MV(mvtitle: "ライブ@広瀬通 2020/11/21", thumbnail: MVView) else {
            fatalError("Unable to instance Benjamin")
        }
        guard let video3 = MV(mvtitle: "ライブ@川内 2019/4/31", thumbnail: MVView) else {
            fatalError("Unable to instance Benjamin")
        }
        guard let video4 = MV(mvtitle: "ドライフラワー(copy)/優里", thumbnail: MVView) else {
            fatalError("Unable to instance Benjamin")
        }
        guard let video5 = MV(mvtitle: "'Money Ben'MV", thumbnail: MVView) else {
            fatalError("Unable to instance Benjamin")
        }
        mvs += [video1, video2, video3, video4, video5]
        */
        if id == 0 {
            guard let video1 = MV(mvtitle: "'国分町に愛はなかった'MV", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video2 = MV(mvtitle: "ライブ@広瀬通 2020/11/21", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video3 = MV(mvtitle: "ライブ@川内 2019/4/31", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video4 = MV(mvtitle: "ドライフラワー(copy)/優里", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video5 = MV(mvtitle: "'Money Ben'MV", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            mvs += [video1, video2, video3, video4, video5]
        }
        if id == 1 {
            guard let video1 = MV(mvtitle: "'国分町に愛はなかった'MV", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video2 = MV(mvtitle: "ライブ@広瀬通 2020/11/21", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video3 = MV(mvtitle: "ライブ@川内 2019/4/31", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video4 = MV(mvtitle: "ドライフラワー(copy)/優里", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video5 = MV(mvtitle: "'Money Ben'MV", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            mvs += [video1, video2, video3, video4, video5]
        }
        if id == 2 {
            guard let video1 = MV(mvtitle: "'国分町に愛はなかった'MV", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video2 = MV(mvtitle: "ライブ@広瀬通 2020/11/21", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video3 = MV(mvtitle: "ライブ@川内 2019/4/31", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video4 = MV(mvtitle: "ドライフラワー(copy)/優里", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video5 = MV(mvtitle: "'Money Ben'MV", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            mvs += [video1, video2, video3, video4, video5]
        }
        
        if id == 4545{
            guard let video1 = MV(mvtitle: "'国分町に愛はなかった'MV", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video2 = MV(mvtitle: "ライブ@広瀬通 2020/11/21", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video3 = MV(mvtitle: "ライブ@川内 2019/4/31", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video4 = MV(mvtitle: "ドライフラワー(copy)/優里", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            guard let video5 = MV(mvtitle: "'Money Ben'MV", thumbnail: MVView) else {
                fatalError("Unable to instance Benjamin")
            }
            mvs += [video1, video2, video3, video4, video5]
        }
        
        
        
    }


}
