//
//  TreatTableViewController.swift
//  PixelsFavoriteThings
//
//  Created by Ciara Beitel on 12/10/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

import UIKit

class TreatTableViewController: UITableViewController {
    
    var treats: [Treat] = []
    
    let crunchyTreat = Treat(name: "Friskies", flavor: "Chicken", amount: 12, rating: 4)
    let softTreat = Treat(name: "Temptations", flavor: "Cheese", amount: 30, rating: 5)
    let yuckyTreat = Treat(name: "Pounce", flavor: "Tuna", amount: 10, rating: 2)
    
    func addTreatsToArray() {
        treats.append(crunchyTreat)
        treats.append(softTreat)
        treats.append(yuckyTreat)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTreatsToArray()
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return treats.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TreatCell", for: indexPath)

        let treat = treats[indexPath.row]
        cell.textLabel?.text = treat.name
        cell.detailTextLabel?.text = treat.flavor

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        
    }
    
}
