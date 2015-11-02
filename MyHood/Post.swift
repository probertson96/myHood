//
//  Post.swift
//  MyHood
//
//  Created by Patrick Robertson on 2/11/2015.
//  Copyright © 2015 Patrick Robertson. All rights reserved.
//

import Foundation

class Post {
    
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
    
}