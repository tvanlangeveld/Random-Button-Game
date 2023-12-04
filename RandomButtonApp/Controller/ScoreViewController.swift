//
//  ScoreViewController.swift
//  RandomButtonApp
//
//  Created by Tanner Vanlangeveld on 12/4/23.
//

import UIKit

class ScoreViewController: UIViewController {
    
    
    
    var scoreArr: [Score] = CoreDataManager.shared.fetchScores()
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

    }
    
    

}

extension ScoreViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return scoreArr.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreCell", for: indexPath)
        
        
        cell.textLabel?.text = String(scoreArr[indexPath.row].score)
        
        
        
        return cell
    }
    
    
}
