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
    let format: String
    let caption : String
    let username: String
    let audioTrackName: String
    let likesNumber: String
    let commentsNumber: String
    let shareNumber: String
 
    init(url: String, format: String, caption: String, username: String, audioTrackName: String, likesNumber: String, commentsNumber: String, shareNumber: String){
        self.url = url
        self.format = format
        self.caption = caption
        self.username = username
        self.audioTrackName = audioTrackName
        self.likesNumber = likesNumber
        self.commentsNumber = commentsNumber
        self.shareNumber = shareNumber
    }

}
