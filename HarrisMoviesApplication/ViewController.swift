//
//  ViewController.swift
//  HarrisMoviesApplication
//
//  Created by juan harrington on 20/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    struct CatFact: Decodable {

        // MARK: - Properties

        let text: String
    }
    
    let factsArray:[CatFact] = []

    @IBOutlet weak var catFactTableView: UITableView!
    
    override func viewDidLoad() {
        let url = URL(string: "https://cat-fact.herokuapp.com/facts")!
        
            
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    if let facts = try? JSONDecoder().decode([CatFact].self, from: data) {
                        print(facts)
                    } else {
                        print("Invalid Response")
                    }
                } else if let error = error {
                    print("HTTP Request Failed \(error)")
                }
                
                
            }
        
        task.resume()
        
        catFactTableView.delegate = self
        catFactTableView.dataSource = self
        
    }
}


