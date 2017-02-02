//
//  ViewController.swift
//  myPlayground
//
//  Created by Bahadir Kocaoglu on 26/01/2017.
//  Copyright © 2017 Bahadir Kocaoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, BlueDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let RedViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RedVC") as! RedVC;
        
        addChildViewController(RedViewController);
        scrollView.addSubview(RedViewController.view);
        RedViewController.didMove(toParentViewController: self);
        
        let BlueViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BlueVC") as! BlueVC;
        BlueViewController.delegate = self;
        
        var BlueViewControllerFrame: CGRect = BlueViewController.view.frame;
        BlueViewControllerFrame.origin.x = self.view.frame.size.width;
        BlueViewController.view.frame = BlueViewControllerFrame;
        
        addChildViewController(BlueViewController);
        scrollView.addSubview(BlueViewController.view);
        BlueViewController.didMove(toParentViewController: self);
        
        scrollView.contentSize = CGSize(width: self.view.frame.width * 2, height: self.view.frame.height);
        
        scrollView.delegate = self;
        
    }
    
    func stopScrolling() {
        scrollView.isScrollEnabled = false;
        print("Disabled!");
    }
    
    func startScrolling() {
        scrollView.isScrollEnabled = true;
        print("Enabled!");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
