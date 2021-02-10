//
//  Videos.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 20/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class Video: NSObject {
    
    let url : String
    let format: String
    let caption : String
    let username: String
    let artistImage: UIImage?
    let bio: String
    let audioTrackName: String
    let likesNumber: String
    let commentsNumber: String
    let shareNumber: String
    let comment_1: String
    let comment_2: String
    let pro_1: UIImage?
    let pro_2: UIImage?
    
    //For ArtistPage
    let ArtistRep: String
    let FollowedNumber: String
    let ArtistView: UIImage?
    
 
    init(url: String, format: String, caption: String, username: String, audioTrackName: String, artistImage: UIImage?, bio: String, likesNumber: String, commentsNumber: String, shareNumber: String, ArtistRep: String, FollowedNumber: String, ArtistView: UIImage?, comment_1: String, comment_2: String, pro_1: UIImage? ,pro_2: UIImage?){
        self.url = url
        self.format = format
        self.caption = caption
        self.username = username
        self.artistImage = artistImage
        self.bio = bio
        self.audioTrackName = audioTrackName
        self.likesNumber = likesNumber
        self.commentsNumber = commentsNumber
        self.shareNumber = shareNumber
        self.comment_1 = comment_1
        self.comment_2 = comment_2
        self.pro_1 = pro_1
        self.pro_2 = pro_2
        self.ArtistRep = ArtistRep
        self.FollowedNumber = FollowedNumber
        self.ArtistView = ArtistView
    }

}
