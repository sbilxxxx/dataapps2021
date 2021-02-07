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
        
        let song1 = Radio(url: "Song1", format: "mp3", jacket: UIImage(named: "Radio1"), artistImage: UIImage(named: "artist1_sqrt"), bio: "", caption: "caption 1", username: "@username 1", audioTrackName: "audio 1", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370")
        let song2 = Radio(url: "Song1", format: "mp3", jacket: UIImage(named: "Radio1"), artistImage: UIImage(named: "artist1_sqrt"), bio: "", caption: "caption 1", username: "@username 1", audioTrackName: "audio 1", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370")
        let song3 = Radio(url: "Song1", format: "mp3", jacket: UIImage(named: "Radio1"), artistImage: UIImage(named: "artist1_sqrt"), bio: "", caption: "caption 1", username: "@username 1", audioTrackName: "audio 1", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370")
        let song4 = Radio(url: "Song1", format: "mp3", jacket: UIImage(named: "Radio1"), artistImage: UIImage(named: "artist1_sqrt"), bio: "", caption: "caption 1", username: "@username 1", audioTrackName: "audio 1", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370")
        let song5 = Radio(url: "Song1", format: "mp3", jacket: UIImage(named: "Radio1"), artistImage: UIImage(named: "artist1_sqrt"), bio: "", caption: "caption 1", username: "@username 1", audioTrackName: "audio 1", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370")
        
       /* let song6 = Radio(url: "video6", format: "mp4", caption: "caption 6", username: "@username 6", audioTrackName: "audio 6", likesNumber: "380", commentsNumber: "10", shareNumber: "0")
        let song7 = Radio(url: "IMG_3122", format: "MOV", caption: "caption 7", username: "@username 7", audioTrackName: "audio 7", likesNumber: "1.2k", commentsNumber: "158", shareNumber: "12")
        let song8 = Radio(url: "IMG_3122", format: "MOV", caption: "caption 8", username: "@username 8", audioTrackName: "audio 8", likesNumber: "904k", commentsNumber: "140", shareNumber: "42")
        let song9 = Radio(url: "IMG_3123", format: "MOV", caption: "caption 9", username: "@username 9", audioTrackName: "audio 9", likesNumber: "264", commentsNumber: "140", shareNumber: "37")
        let song10 = Radio(url: "video10", format: "mp4", caption: "caption 10", username: "@username 10", audioTrackName: "audio 10", likesNumber: "39.4k", commentsNumber: "2k", shareNumber: "900")
        """
 */
        
        //let listaRadios:Array<Radio> = [song1, song2, song3, song4, song5, song6, song7, song8, song9, song10]
        let listaRadios:Array<Radio> = [song1, song2, song3, song4, song5]
        
        
        
        return listaRadios
    }

}
