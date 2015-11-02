//
//  AddPostVC.swift
//  MyHood
//
//  Created by Patrick Robertson on 2/11/2015.
//  Copyright © 2015 Patrick Robertson. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var postImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true

    }
    
    @IBAction func makePostButtonPressed(sender: UIButton!) {
        
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addPicButtonPressed(sender: AnyObject) {
        sender.setTitle("", forState: .Normal)
    }
    
}
