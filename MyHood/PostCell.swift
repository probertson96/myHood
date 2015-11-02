//
//  PostCell.swift
//  MyHood
//
//  Created by Patrick Robertson on 2/11/2015.
//  Copyright © 2015 Patrick Robertson. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true
    }

    func configureCell(post: Post) {
        titleLabel.text = post.title
        descLabel.text = post.postDesc
    }

}
