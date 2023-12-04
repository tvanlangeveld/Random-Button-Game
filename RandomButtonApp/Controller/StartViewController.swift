//
//  StartViewController.swift
//  RandomButtonApp
//
//  Created by Tanner Vanlangeveld on 11/15/23.
//
import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var highScore: UILabel!
    
    let gameBrain = GameBrain.shared
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if gameBrain.score != 0 {
            CoreDataManager.shared.addScore(score: gameBrain.score)
        } 
        
        var highScoreText = CoreDataManager.shared.calculateHighScore()
        
        highScore.text = "High Score:\(highScoreText)"
        
    
        
    }
    
    //    @IBAction func startBtn(_ sender: UIButton) {
    //        let gameViewController = GameViewController()
    //
    //        navigationController?.pushViewController(gameViewController, animated: true)
    //    }
    //
    //
    
}
