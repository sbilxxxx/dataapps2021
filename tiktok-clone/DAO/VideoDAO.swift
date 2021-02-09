//
//  VideoDAO.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 20/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class VideoDAO: NSObject {
    
    func returnAllVideos() -> Array<Video> {
        
        let video1 = Video(url: "Reel1", format: "mp4", caption: "caption 1", username: "ジョン", audioTrackName: "2021/9/2 結成2周年ライブ@ライブハウスgangan", artistImage: UIImage(named: "Sq1"), bio: "皆さんこんにちは!\n東京を中心に路上ミュージシャンをしているジョンです!!\n自分の歌で1人でも多くの人が幸せになってくれるよう一生懸命歌います!\nフォロー・応援よろしくお願いします!!", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370", ArtistRep: "大阪", FollowedNumber: "136フォロワー", ArtistView: UIImage(named:"Main1"))
        let video2 = Video(url: "Reel2", format: "mp4", caption: "caption 1", username: "ポール", audioTrackName: "Take me home (official MV)", artistImage: UIImage(named: "Sq2"), bio: "仙台市を中心に活動しているポールです!\n現在はsakana大学に在学中で卒業後はプロのミュージシャンになることを目指しています!\n好きなジャンルはフォークソングです!\n自分で曲も書いたりしているので、ぜひチェックしてみてください!\nフォロー・応援よろしくお願いします!!", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370", ArtistRep: "奈良", FollowedNumber: "136フォロワー", ArtistView: UIImage(named:"Main2"))
        let video3 = Video(url: "Reel3", format: "mp4", caption: "caption 1", username: "ハリスン", audioTrackName: "Novel View (ハリスン) @新宿駅路上ライブ", artistImage: UIImage(named: "Sq3"), bio: "Newdio 始めました!\n僕が作った曲で世界をLove&Peaceにしていきます!\n1日1投稿目指して頑張りたいと思います!!\nフォロー・応援よろしく意願いします!", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370", ArtistRep: "岩手", FollowedNumber: "136フォロワー", ArtistView: UIImage(named:"Main3"))
        let video4 = Video(url: "Reel4", format: "mp4", caption: "caption 1", username: "リンゴ", audioTrackName: "GORINGO (リンゴ) @仙台駅路上ライブ", artistImage: UIImage(named: "Sq4"), bio: "現役大学生バンド「リンゴ」です!\n主に路上ライブを仙台駅前でやってます!!\n好きなジャンルは邦ロック!\n「Sakane Wimps」のカバーをよくしたりしなかったりします!\nFollowよろしくお願いします!!!", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370", ArtistRep: "東京", FollowedNumber: "136フォロワー", ArtistView: UIImage(named:"Main4"))
        let video5 = Video(url: "Reel5", format: "mp4", caption: "caption 1", username: "ヨーコ", audioTrackName: "Let it fire 弾いてみた (ヨーコ)", artistImage: UIImage(named: "Sq5"), bio: "主に弾き語りなんかをしてます、ヨーコです\nギターも弾くけど、何でも弾きます\nピアノとか、ドラムとか\nフォローしてくれると嬉しいなーーー", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370", ArtistRep: "サンフランシスコ", FollowedNumber: "136フォロワー", ArtistView: UIImage(named:"Main5"))
        
        /*
        let video6 = Video(url: "video6", format: "mp4", caption: "caption 6", username: "@username 6", audioTrackName: "audio 6", likesNumber: "380", commentsNumber: "10", shareNumber: "0")
        let video7 = Video(url: "IMG_3122", format: "MOV", caption: "caption 7", username: "@username 7", audioTrackName: "audio 7", likesNumber: "1.2k", commentsNumber: "158", shareNumber: "12")
        let video8 = Video(url: "IMG_3122", format: "MOV", caption: "caption 8", username: "@username 8", audioTrackName: "audio 8", likesNumber: "904k", commentsNumber: "140", shareNumber: "42")
        let video9 = Video(url: "IMG_3123", format: "MOV", caption: "caption 9", username: "@username 9", audioTrackName: "audio 9", likesNumber: "264", commentsNumber: "140", shareNumber: "37")
        let video10 = Video(url: "video10", format: "mp4", caption: "caption 10", username: "@username 10", audioTrackName: "audio 10", likesNumber: "39.4k", commentsNumber: "2k", shareNumber: "900")
        */
        
        //let listaVideos:Array<Video> = [video1, video2, video3, video4, video5, video6, video7, video8, video9, video10]
        let listaVideos:Array<Video> = [video1, video2, video3, video4, video5]
        
        
        return listaVideos
    }

}
