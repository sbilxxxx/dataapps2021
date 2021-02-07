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
    
    
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var labelCaption: UILabel!
    @IBOutlet weak var labelAudioTrack: UILabel!
    
    @IBOutlet weak var stackViewButtons: UIStackView!
    @IBOutlet weak var discoIcon: UIButton!
    
    @IBOutlet weak var labelLikesNumber: UILabel!
    @IBOutlet weak var labelCommentsNumber: UILabel!
    @IBOutlet weak var labelShareNumber: UILabel!
    
    static let identifier = "cellRadio"
    
    // MARK: Subviews
    private var radio: Radio?
    var player: AVPlayer?
    
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
        guard let path = Bundle.main.path(forResource: radio.url, ofType: radio.format) else { return }
        player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerView = AVPlayerLayer()
        playerView.player = player
        playerView.frame = radioContainer.bounds
        playerView.videoGravity = .resizeAspectFill
        radioContainer.layer.addSublayer(playerView)
        
        player?.volume = 0
        player?.play()
    }
    
    func clean(){
        labelUsername.text = nil
        labelCaption.text = nil
        labelAudioTrack.text = nil
        labelLikesNumber.text = nil
        labelCommentsNumber.text = nil
        labelShareNumber.text = nil

        radio = nil
        radioContainer.layer.sublayers?.forEach { $0.removeFromSuperlayer() }
    }
    
    private func configureRadioInfo(){
        guard let radio = radio else { return }
        labelUsername.text = radio.username
        labelCaption.text = radio.caption
        labelAudioTrack.text = radio.audioTrackName
        labelLikesNumber.text = radio.likesNumber
        labelCommentsNumber.text = radio.commentsNumber
        labelShareNumber.text = radio.shareNumber
        discoIcon.startRotating()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}

