//
//  RadioViewController.swift
//  tiktok-clone
//
//  Created by Makoto Zaima on 2021/02/07.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class RadioViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var VideoView: UIView!
    @IBOutlet weak var radioCollectionView: UICollectionView!
    
    
    let listaComTodosRadios: Array<Radio> = RadioDAO().returnAllRadios()
    var listaRadios: Array<Radio> = []
  
    override func viewDidLoad() {
        super.viewDidLoad()
        radioCollectionView.dataSource = self
        radioCollectionView.delegate = self
        listaRadios = listaComTodosRadios
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return self.listaRadios.count
          }
          
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaRadio = collectionView.dequeueReusableCell(withReuseIdentifier: "cellRadio", for: indexPath) as! RadioCollectionViewCell
        let radioAtual = listaRadios[indexPath.row]
        celulaRadio.configure(with: radioAtual)
        return celulaRadio
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cvRect = view.frame
        return CGSize(width: cvRect.width, height: view.safeAreaLayoutGuide.layoutFrame.size.height)
        //return CGSize(width: cvRect.width, height: cvRect.height)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // Change Status Bar Color
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
