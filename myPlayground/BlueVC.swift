//
//  BlueVC.swift
//  myPlayground
//
//  Created by Bahadir Kocaoglu on 26/01/2017.
//  Copyright © 2017 Bahadir Kocaoglu. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func disableScrolling(_ sender: Any) {
        
        // fatal error: unexpectedly found nil while unwrapping an Optional value
        let mainVC = ViewController();
        mainVC.scrollView.isScrollEnabled = false;
        
    }
    
    @IBAction func enableScrolling(_ sender: Any) {
        
    }
    
}
