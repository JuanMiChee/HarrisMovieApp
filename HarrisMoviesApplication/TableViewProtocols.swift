//
//  TableViewProtocols.swift
//  HarrisMoviesApplication
//
//  Created by juan harrington on 24/03/22.
//

import UIKit


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return factsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  catFactTableView.dequeueReusableCell(withIdentifier: "prototypeCell", for: indexPath)
        //cell.textLabel?.text = factsArray[indexPath.row] esto es lo que hay que arreglar pa
        return cell
    }
}
