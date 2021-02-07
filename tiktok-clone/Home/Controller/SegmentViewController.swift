//
//  SegmentViewController.swift
//  tiktok-clone
//
//  Created by Makoto Zaima on 2021/02/07.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {

    @IBOutlet weak var ReelView: UIView!
    @IBOutlet weak var RadioView: UIView!
    @IBOutlet weak var SegmenView: UIView!
    
    var Containers: Array<UIView> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Containers = [ReelView, RadioView]
        SegmenView.bringSubviewToFront(ReelView)
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
   
    @IBAction func TapSegment(_ sender: UISegmentedControl) {
        let currentView = Containers[sender.selectedSegmentIndex]
        SegmenView.bringSubviewToFront(currentView)
        
    }
    
}
