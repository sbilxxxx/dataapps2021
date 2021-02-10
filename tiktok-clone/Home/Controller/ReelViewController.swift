//
//  HomeViewController.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 20/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit


class ReelViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UIGestureRecognizerDelegate{

    
    @IBOutlet weak var VideoView: UIView!
    @IBOutlet weak var reelCollectionView: UICollectionView!
    @IBOutlet weak var reelcollectionviewcell: UICollectionViewCell!
    
    
    let listaComTodosVideos: Array<Video> = VideoDAO().returnAllVideos()
    var listaVideos: Array<Video> = []
    
    var givedata: Video!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        reelCollectionView.dataSource = self
        reelCollectionView.delegate = self
        listaVideos = listaComTodosVideos
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return self.listaVideos.count
          }
          
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaVideo = collectionView.dequeueReusableCell(withReuseIdentifier: "cellVideo", for: indexPath) as! ReelCollectionViewCell
        let videoAtual = listaVideos[indexPath.row]
        celulaVideo.configure(with: videoAtual)
        return celulaVideo
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //let cvRect = view.frame
        let cvRect = reelCollectionView.frame
        return CGSize(width: cvRect.width, height: cvRect.height)
        //return CGSize(width: cvRect.width, height: cvRect.height)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    /*
    private func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "videoCell", for: indexPath as IndexPath) as! ReelCollectionViewCell
        
        if cell.ArtistView.gestureRecognizers?.count == 0 {
            let tapGesture = UITapGestureRecognizer(target: self, action: Selector(("tapView:")))
            cell.ArtistView.addGestureRecognizer(tapGesture)
            cell.ArtistView.isUserInteractionEnabled = true
        }
        return cell
    }
    
    func tapView(gestureRecognizer: UITapGestureRecognizer){
        let tappedLocation = gestureRecognizer.location(in: reelCollectionView)
        let tappedIndexPath = reelCollectionView.indexPathForItem(at: tappedLocation)
        let tappedItem = tappedIndexPath?.item
        print(tappedItem!)
        performSegue(withIdentifier: "videoCell", sender: nil)
    }
    
    */
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        givedata = listaComTodosVideos[indexPath.item]
        
        performSegue(withIdentifier: "viewDetail", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewDetail"{
            guard let destination = segue.destination as? ArtistPagefromHomeViewController else{
                fatalError("")
                
            }
            destination.eachartist = givedata
            }
        }
    // Change Status Bar Color
    /*
    override func viewDidAppear(_ animated: Bool) {
        
     if #available(iOS 13.0, *) {
         let app = UIApplication.shared
         let statusBarHeight: CGFloat = app.statusBarFrame.size.height
         
         let statusbarView = UIView()
         statusbarView.backgroundColor = UIColor.black
         view.addSubview(statusbarView)
       
         statusbarView.translatesAutoresizingMaskIntoConstraints = false
         statusbarView.heightAnchor
             .constraint(equalToConstant: statusBarHeight).isActive = true
         statusbarView.widthAnchor
             .constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
         statusbarView.topAnchor
             .constraint(equalTo: view.topAnchor).isActive = true
         statusbarView.centerXAnchor
             .constraint(equalTo: view.centerXAnchor).isActive = true
       
     } else {
         let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView
         statusBar?.backgroundColor = UIColor.black
     }
    }
      
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    @IBAction func didTapProfileButton(_ sender: Any) {
        print("profile")
    }
    
    @IBAction func didTapLikeButton(_ sender: Any) {
        print("like")
    }
    
    @IBAction func didTapCommentButton(_ sender: Any) {
        print("comment")
    }
    
    @IBAction func didTapShareButton(_ sender: Any) {
        print("share")
    }
 */
    
    //MARK: Action
    
    @IBAction func Segment(_ sender: Any) {
    }
    
    
}






