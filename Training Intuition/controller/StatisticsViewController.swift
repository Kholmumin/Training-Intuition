//
//  StatisticsViewController.swift
//  Training Intuition
//
//  Created by Kholmumin Tursinboev on 10/02/22.
//

import UIKit

class StatisticsViewController: UIViewController {

    
    @IBOutlet weak var percentCount: UILabel!
    @IBOutlet weak var clicksCount: UILabel!
    
    
    var clickC:String?
    var percentC:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Statistics"
        clicksCount.text = clickC
        percentCount.text = percentC
        
    }


 

}
