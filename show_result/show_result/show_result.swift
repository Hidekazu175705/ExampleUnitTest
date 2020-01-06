//
//  show_result.swift
//  show_result
//
//  Created by 下田英寿 on 2019/12/03.
//  Copyright © 2019 Hidekazu Shimoda. All rights reserved.
//

import UIKit

class show_result: UIViewController {
    
    var argString = ""
    var highScore:Int = 0
    var rank: [Int] = [1]

    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //defaults.register(defaults: ["highScore": "0"])
        
        label1.text = argString
        let score = Int(argString)!
        //defaults.set(highScore, forKey: "highScore")
        //defaults.synchronize()
        //if(highScore == nil){
        //    highScore = 0
        //}
        if(score>defaults.integer(forKey: "highScore")){
            defaults.set(score, forKey: "highScore")
            defaults.synchronize()
            highScore = score
        }
        
        label2.text = String(defaults.integer(forKey: "highScore"))
        
        rank.append(score)
        rank.sort(by: >)
        
        defaults.set(rank, forKey: "rank")
        defaults.synchronize()
        
        Rank.text = "\(rank)"
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBOutlet weak var namelabel: UILabel!
    
    @IBAction func goBack(_ sender: Any) {
        
        let storyboard: UIStoryboard = self.storyboard!
        
        let nextView = storyboard.instantiateViewController(withIdentifier: "View1")as! ViewController
        
        self.present(nextView, animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBAction func goRank(_ sender: Any) {
        
        let storyboard: UIStoryboard = self.storyboard!
        
        let nextView = storyboard.instantiateViewController(withIdentifier: "View3")as! rank
        
        self.present(nextView, animated: true, completion: nil)
        
    }
    
    
    
    @IBOutlet weak var Rank: UILabel!
    
}

