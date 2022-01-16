//
//  StartTableViewController.swift
//  API
//
//  Created by Artem Zhuzhgin on 16.01.2022.
//

import UIKit

class StartTableViewController: UITableViewController {

    let citiesArray = City.returnArrayOfCities()
    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        citiesArray.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let city = citiesArray[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(city.name)"
        print(city.name)
        cell.contentConfiguration = content
        return cell
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        city = citiesArray[indexPath.row]
        print(city.name)
    }

   

    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let infoVC = segue.destination as? ViewController else {return}
        guard let index = tableView.indexPathForSelectedRow else {return}
        infoVC.city = citiesArray[index.row]
    }
}
