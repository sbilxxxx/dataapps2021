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
        
        let video1 = Video(url: "Reel1", format: "mp4", caption: "caption 1", username: "@username 1", audioTrackName: "audio 1", artistImage: UIImage(named: "Sq1"), bio: "星丘公園 Vo.林萌々子(Hump Back) Gt. 磯貝一樹(Kazuki Isogai) instagram http://Instagram.com/KAZUKI_ISOGAI/", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370", ArtistRep: "大阪", FollowedNumber: "136フォロワー", ArtistView: UIImage(named:"Main1"))
        let video2 = Video(url: "Reel2", format: "mp4", caption: "caption 1", username: "@username 2", audioTrackName: "audio 1", artistImage: UIImage(named: "Sq2"), bio: "ばんばんざいで 優里さんの「ドライフラワー」 歌ってみました！ 切なく歌う3人をお楽しみください", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370", ArtistRep: "奈良", FollowedNumber: "136フォロワー", ArtistView: UIImage(named:"Main2"))
        let video3 = Video(url: "Reel3", format: "mp4", caption: "caption 1", username: "@username 3", audioTrackName: "audio 1", artistImage: UIImage(named: "Sq3"), bio: "初めまして。春ですね。みやかわくんです。 今回は全く新しいスタイル、なんと実写で歌ってみました。 大好きなflumpool様の「君に届け」です。 そういえばYouTubeの実写での投稿は全ジャンル含めても初めてだからこれはある意味記念すべき「初投稿」ですね！！！ｗ 卒業された方。ご卒業おめでとうございます。これからはまた新しい生活が始まりますね。 不安でも大丈夫。きっとみんな同じ事思ってる。 でも自分から一歩前に踏み出さないといけない時もある。 それって本当に勇気のいることですよね。 そんな時には是非この歌を聴いてください。 少しでもあなたの勇気になれば。なんて想いも込めてあります。 がんばれ！！", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370", ArtistRep: "岩手", FollowedNumber: "136フォロワー", ArtistView: UIImage(named:"Main3"))
        let video4 = Video(url: "Reel4", format: "mp4", caption: "caption 1", username: "@username 4", audioTrackName: "audio 1", artistImage: UIImage(named: "Sq4"), bio: "『幸せって今はわかんなくたって 精一杯僕を生きていく　何も後悔なんてないさ　前を向け』 ２０万人ありがとう！ これからも前を向いて歩いていくのでついてきてください。", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370", ArtistRep: "東京", FollowedNumber: "136フォロワー", ArtistView: UIImage(named:"Main4"))
        let video5 = Video(url: "Reel5", format: "mp4", caption: "caption 1", username: "@username 5", audioTrackName: "audio 1", artistImage: UIImage(named: "Sq5"), bio: "YOASOBIさんの「怪物」を男２人で歌いました！！ TVアニメ『BEASTARS』第二期オープニングテーマです！！ MELOGAPPAは色々な角度から音楽を楽しむYouTubeチャンネルです！！ ぜひ高評価＆チャンネル登録お願いします！！", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370", ArtistRep: "サンフランシスコ", FollowedNumber: "136フォロワー", ArtistView: UIImage(named:"Main5"))
        
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
