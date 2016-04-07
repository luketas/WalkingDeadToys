//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by Lucas Franco on 3/21/16.
//  Copyright © 2016 Lucas Franco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    
    let WIDTH: CGFloat = 290
    let HEIGHT: CGFloat = 385
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
        
        ScrollView.addSubview(imgView)
            imgView.frame = CGRectMake(-WIDTH +  (WIDTH * CGFloat(x)), 355, WIDTH, HEIGHT)
            
            
        }
        ScrollView.contentSize = CGSizeMake(WIDTH * 7, ScrollView.frame.size.height)
    }

    

}

