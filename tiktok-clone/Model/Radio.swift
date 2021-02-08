//
//  Song.swift
//  tiktok-clone
//
//  Created by Makoto Zaima on 2021/02/07.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit


class Radio: NSObject {
    
    let url : String
    //let jacket_url: String
    //let jacket_format: String
    let jacket: UIImage?
    let artistImage: UIImage?
    let bio: String
    let format: String
    let caption : String
    let username: String
    let audioTrackName: String
    let likesNumber: String
    let commentsNumber: String
    let shareNumber: String
 
    init(url: String, format: String, jacket: UIImage?, artistImage: UIImage?, bio: String, caption: String, username: String, audioTrackName: String, likesNumber: String, commentsNumber: String, shareNumber: String){
        self.url = url
        //self.jacket_url = jacket_url
        self.format = format
        //self.jacket_format = jacket_format
        self.jacket = jacket
        self.artistImage = artistImage
        self.bio = bio
        self.caption = caption
        self.username = username
        self.audioTrackName = audioTrackName
        self.likesNumber = likesNumber
        self.commentsNumber = commentsNumber
        self.shareNumber = shareNumber
    }

}
