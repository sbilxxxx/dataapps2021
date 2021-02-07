//
//  SongDAO.swift
//  tiktok-clone
//
//  Created by Makoto Zaima on 2021/02/07.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//


import UIKit

class RadioDAO: NSObject {
    
    func returnAllRadios() -> Array<Radio> {
        
        let song1 = Radio(url: "IMG_2944", format: "MOV", caption: "caption 1", username: "@username 1", audioTrackName: "audio 1", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370")
        let song2 = Radio(url: "IMG_3117", format: "MOV", caption: "caption 2", username: "@username 2", audioTrackName: "audio 2", likesNumber: "260k", commentsNumber: "1.4k", shareNumber: "370")
        let song3 = Radio(url: "IMG_3118", format: "MOV", caption: "caption 3", username: "@username 3", audioTrackName: "audio 3", likesNumber: "1.1M", commentsNumber: "56k", shareNumber: "5k")
        let song4 = Radio(url: "IMG_3119", format: "MOV", caption: "caption 4", username: "@username 4", audioTrackName: "audio 4", likesNumber: "16.4k", commentsNumber: "200", shareNumber: "42")
        let song5 = Radio(url: "IMG_3120", format: "MOV", caption: "caption 5", username: "@username 5", audioTrackName: "audio 5", likesNumber: "260k", commentsNumber: "10.6k", shareNumber: "900")
        let song6 = Radio(url: "video6", format: "mp4", caption: "caption 6", username: "@username 6", audioTrackName: "audio 6", likesNumber: "380", commentsNumber: "10", shareNumber: "0")
        let song7 = Radio(url: "IMG_3122", format: "MOV", caption: "caption 7", username: "@username 7", audioTrackName: "audio 7", likesNumber: "1.2k", commentsNumber: "158", shareNumber: "12")
        let song8 = Radio(url: "IMG_3122", format: "MOV", caption: "caption 8", username: "@username 8", audioTrackName: "audio 8", likesNumber: "904k", commentsNumber: "140", shareNumber: "42")
        let song9 = Radio(url: "IMG_3123", format: "MOV", caption: "caption 9", username: "@username 9", audioTrackName: "audio 9", likesNumber: "264", commentsNumber: "140", shareNumber: "37")
        let song10 = Radio(url: "video10", format: "mp4", caption: "caption 10", username: "@username 10", audioTrackName: "audio 10", likesNumber: "39.4k", commentsNumber: "2k", shareNumber: "900")
        
        let listaRadios:Array<Radio> = [song1, song2, song3, song4, song5, song6, song7, song8, song9, song10]
        
        return listaRadios
    }

}
