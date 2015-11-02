//
//  ViewController.swift
//  MyHood
//
//  Created by Patrick Robertson on 2/11/2015.
//  Copyright © 2015 Patrick Robertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var postsArray = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var post1 = Post(imagePath: "", title: "Post 1", description: "Post 1 Description")
        var post2 = Post(imagePath: "", title: "Post 2", description: "Post 2 Description")
        var post3 = Post(imagePath: "", title: "Post 3", description: "Post 3 Description")
        
        postsArray.append(post1)
        postsArray.append(post2)
        postsArray.append(post3)
        
        tableView.reloadData()
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = postsArray[indexPath.row]
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            
            cell.configureCell(post)
            return cell
            
        } else {
            
            var cell = PostCell()
            cell.configureCell(post)
            return cell
            
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 88.0
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return postsArray.count
        
    }
    
    

}

