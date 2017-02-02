//
//  ViewController.swift
//  myPlayground
//
//  Created by Bahadir Kocaoglu on 26/01/2017.
//  Copyright © 2017 Bahadir Kocaoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let RedVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RedVC") as UIViewController;
        
        addChildViewController(RedVC);
        scrollView.addSubview(RedVC.view);
        RedVC.didMove(toParentViewController: self);
        
        let BlueVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BlueVC") as UIViewController;
        
        var BlueVCFrame: CGRect = BlueVC.view.frame;
        BlueVCFrame.origin.x = self.view.frame.size.width;
        BlueVC.view.frame = BlueVCFrame;
        
        addChildViewController(BlueVC);
        scrollView.addSubview(BlueVC.view);
        BlueVC.didMove(toParentViewController: self);
        
        scrollView.contentSize = CGSize(width: self.view.frame.width * 2, height: self.view.frame.height);
        
        scrollView.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

