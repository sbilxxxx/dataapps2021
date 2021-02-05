//
//  NewsTableViewCell.swift
//  tiktok-clone
//
//  Created by 鈴木春太郎 on 2021/02/05.
//  Copyright © 2021 MarcioVCampos. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    //MARK: Property
    @IBOutlet weak var ArtistView: UIImageView!
    @IBOutlet weak var ArtistName: UILabel!
    @IBOutlet weak var NewsTitle: UILabel!
    @IBOutlet weak var NewsBody: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
