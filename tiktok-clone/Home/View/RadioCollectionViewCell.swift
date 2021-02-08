//
//  RadioCollectionViewCell.swift
//  tiktok-clone
//
//  Created by Makoto Zaima on 2021/02/07.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit
import AVFoundation

class RadioCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var radioContainer: UIView!
    
    @IBOutlet weak var jacketImage: UIImageView!
    
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var labelAudioTrack: UILabel!
    @IBOutlet weak var labelBio: UILabel!
    
   
    static let identifier = "cellRadio"
    
    // MARK: Subviews
    private var radio: Radio?
    //var jacketImage: UIImageView?
    //let jacketImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        clean()
    }
    
    public func configure(with radio: Radio){
        self.radio = radio
        configureRadio()
        configureRadioInfo()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        //clean()
    }
    
    private func configureRadio(){
        
        guard let radio = radio else { return }
        //guard let path = Bundle.main.path(forResource: radio.jacket_url, ofType: radio.jacket_format) else { return }
        //print(path)
        //jacketImage.image = UIImage(contentsOfFile: String(path))
        //let playerView = AVPlayerLayer()
        //playerView.player = player
        //playerView.frame = radioContainer.bounds
        //playerView.videoGravity = .resizeAspectFill
        //self.jacketImage.addSubview(jacketImage)

        
        //player?.volume = 0
        //player?.play()
    }
    
    func clean(){
        labelUsername.text = nil
        labelAudioTrack.text = nil
        

        radio = nil
        radioContainer.layer.sublayers?.forEach { $0.removeFromSuperlayer() }
    }
    
    private func configureRadioInfo(){
        guard let radio = radio else { return }
        jacketImage.image = radio.jacket
        //jacketImage.addSubview(jacketImage)
        labelUsername.text = radio.username
        labelAudioTrack.text = radio.audioTrackName
        labelBio.text = radio.bio
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}

