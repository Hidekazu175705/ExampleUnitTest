//
//  ResultViewController.swift
//  fishing_ar
//
//  Created by 下田英寿 on 2020/01/11.
//  Copyright © 2020 赤嶺有平. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func goBack(_ sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        
        let nextView = storyboard.instantiateViewController(withIdentifier: "MainView")as! ViewController
        
        self.present(nextView, animated: true, completion: nil)
    }
    
    
}
