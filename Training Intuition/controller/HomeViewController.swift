//
//  HomeViewController.swift
//  Training Intuition
//
//  Created by Kholmumin Tursinboev on 10/02/22.
//

import UIKit

class HomeViewController: UIViewController {


    var count = 0
    var percent = 0
    var trueAnswer = 0
    
    var randomInt=Int.random(in: 0...1)
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var whiteView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       initView()

        print(randomInt)

    }
    
    
    func initView(){
        title = "Home"
        let statistics = UIBarButtonItem(image: UIImage(named: "menu"), style: .done, target: self, action: #selector(goStaticPage))
        
        let reset = UIBarButtonItem(image: UIImage(systemName: "goforward"), style: .done, target: self, action: #selector(newGame))
        
        blackView.isHidden = true
        whiteView.isHidden = true
        navigationItem.rightBarButtonItems=[statistics]
        navigationItem.leftBarButtonItems=[reset]
    }

    
    @objc func goStaticPage(){
        let vc = StatisticsViewController(nibName: "StatisticsViewController", bundle: nil)
        vc.clickC = String(count)
        vc.percentC = String(percent)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @objc func newGame(){
        count = 0
        percent = 0
        trueAnswer = 0
    }
    


   
    
 
    

    @IBAction func blackPressed(_ sender: Any) {
        count += 1
        
        var a = blackView
        if randomInt == 1{
            a = blackView
        }else{
            a = whiteView
        }

        UIView.transition(from: backImage, to: a!, duration: 0.3, options: [.showHideTransitionViews,.transitionFlipFromLeft]) { [self] _ in
            UIView.transition(from:a!, to: self.backImage, duration: 0.3, options: [.showHideTransitionViews,.transitionCrossDissolve], completion: nil)
        }
        if randomInt == 1{
            trueAnswer += 1
        }
        
        randomInt = Int.random(in: 0...1)
        percent = Int(Double(trueAnswer)/Double(count) * 100)
        print("black, randomInt: \(randomInt), trueAnswer: \(trueAnswer),count: \(count),percentage:\(percent)")
        
        
    }
    
    
    @IBAction func whitePressed(_ sender: Any) {
        
        count += 1

        var b = whiteView
        if randomInt == 0{
            b = whiteView
        }else{
            b = blackView
        }

        UIView.transition(from: backImage, to: b!, duration: 0.3, options: [.showHideTransitionViews,.transitionFlipFromRight]) { [self] _ in
            UIView.transition(from: b!, to: self.backImage, duration: 0.3, options: [.showHideTransitionViews,.transitionCrossDissolve], completion: nil)
        }
       
        if randomInt == 0{
            trueAnswer += 1
        }
        randomInt = Int.random(in: 0...1)
        percent = Int(Double(trueAnswer)/Double(count) * 100)
        print("white, randomInt: \(randomInt), trueAnswer: \(trueAnswer),count: \(count), percentage:\(percent)")
    }
}
