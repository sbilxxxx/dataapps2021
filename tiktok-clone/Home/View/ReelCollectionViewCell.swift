//
//  VideosCollectionViewCell.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 20/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit
import AVFoundation

class ReelCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var videoContainer: UIView!
    
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var labelAudioTrack: UILabel!
    @IBOutlet weak var labelBio: UILabel!
    @IBOutlet weak var ArtistView: UIImageView!
    
    
    @IBOutlet weak var pro1View: UIImageView!
    @IBOutlet weak var pro2View: UIImageView!
    
    @IBOutlet weak var comment1: UILabel!
    @IBOutlet weak var comment2: UILabel!
    
    

    static let identifier = "cellVideo"
    
    // MARK: Subviews
    private var video: Video?
    var player: AVPlayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        clean()
    }
    
    public func configure(with video: Video){
        self.video = video
        configureVideo()
        configureVideoInfo()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        //clean()
    }
    
    private func configureVideo(){
        
        guard let video = video else { return }
        guard let path = Bundle.main.path(forResource: video.url, ofType: video.format) else { return }
        player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerView = AVPlayerLayer()
        playerView.player = player
        playerView.frame = videoContainer.bounds
        playerView.videoGravity = .resizeAspectFill
        videoContainer.layer.addSublayer(playerView)
        
        player?.volume = 0
        player?.play()
    }
    
    func clean(){
        labelUsername.text = nil
        labelAudioTrack.text = nil
        
        video = nil
        videoContainer.layer.sublayers?.forEach { $0.removeFromSuperlayer() }
    }
    
    private func configureVideoInfo(){
        guard let video = video else { return }
        labelUsername.text = video.username
        labelAudioTrack.text = video.audioTrackName
        labelBio.text = video.bio
        ArtistView.image = video.artistImage
        pro1View.image = video.pro_1
        pro2View.image = video.pro_2
        comment1.text = video.comment_1
        comment2.text = video.comment_2
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
        
}

extension UIButton {
    func startRotating(duration: Double = 1) {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            animate.duration = duration
            animate.repeatCount = Float.infinity
            animate.fromValue = 0.0
            animate.toValue = Float(.pi * 2.0)
            self.layer.add(animate, forKey: kAnimationKey)
        }
    }
    func stopRotating() {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) != nil {
            self.layer.removeAnimation(forKey: kAnimationKey)
        }
    }
    
    
    
}

