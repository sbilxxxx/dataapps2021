//
//  BioDetailViewController.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/09.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class BioDetailViewController: UIViewController {
    
    
    @IBOutlet weak var bio: UILabel!
    var receivebio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bio.text = receivebio
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
