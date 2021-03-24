//
//  ViewController.swift
//  MVVMProject
//
//  Created by Anas AbuZaitoun on 24/03/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var models = [Person]()
    
    let tableView: UITableView = {
        let table = UITableView()
        table.register(PersonFollowingTableViewCell.self, forCellReuseIdentifier: PersonFollowingTableViewCell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        configureModels()
        tableView.dataSource = self
        tableView.frame = view.bounds
    }
    
    func configureModels(){
        let names = ["name 1", "name 2", "name 3", "name 4"]
        for name in names {
            models.append(Person(name: name))
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonFollowingTableViewCell.identifier, for: indexPath) as! PersonFollowingTableViewCell
        cell.textLabel?.text = models[indexPath.row].name
        return cell
    }
}

