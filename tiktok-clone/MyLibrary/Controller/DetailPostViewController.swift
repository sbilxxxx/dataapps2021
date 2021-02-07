//
//  DetailPostViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/05.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class DetailPostViewController: UIViewController {
    
    @IBOutlet weak var PostTitle: UILabel!
    @IBOutlet weak var PostBody: UILabel!
    
    var eachpost: Post!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        PostTitle.text = eachpost.title
        PostBody.text = eachpost.body
       
        
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
