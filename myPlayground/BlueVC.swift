//
//  BlueVC.swift
//  myPlayground
//
//  Created by Bahadir Kocaoglu on 26/01/2017.
//  Copyright © 2017 Bahadir Kocaoglu. All rights reserved.
//

import UIKit

protocol BlueDelegate {
    func stopScrolling();
    func startScrolling();
}

class BlueVC: UIViewController {
    
    var delegate: BlueDelegate?;
    
    @IBOutlet weak var disableScrollingButton: UIButton!
    @IBOutlet weak var enableScrollingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func disableScrolling(_ sender: Any) {
        delegate?.stopScrolling();
    }
    
    @IBAction func enableScrolling(_ sender: Any) {
        delegate?.startScrolling();
    }
    
}
