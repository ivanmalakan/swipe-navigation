//
//  ViewController.swift
//  myPlayground
//
//  Created by Bahadir Kocaoglu on 26/01/2017.
//  Copyright © 2017 Bahadir Kocaoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myscr: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let VC1 = (self.storyboard?.instantiateViewController(withIdentifier: "VC1"))! as UIViewController;
        self.addChildViewController(VC1);
        self.myscr.addSubview(VC1.view);
        VC1.didMove(toParentViewController: self);
        VC1.view.frame = myscr.bounds;
        
        let VC2 = (self.storyboard?.instantiateViewController(withIdentifier: "VC2"))! as UIViewController;
        self.addChildViewController(VC2);
        self.myscr.addSubview(VC2.view);
        VC2.didMove(toParentViewController: self);
        VC2.view.frame = myscr.bounds;
        
        var VC2Frame: CGRect = VC2.view.frame;
        VC2Frame.origin.x = self.view.frame.width;
        VC2.view.frame = VC2Frame;
        
        self.myscr.contentSize = CGSize(width: (self.view.frame.width * 2), height: self.view.frame.height);
        self.myscr.contentOffset = CGPoint(x: (self.view.frame.width * 2), y: self.view.frame.height);
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

