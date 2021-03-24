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
            models.append(Person(name: name, username: "Temp name"))
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonFollowingTableViewCell.identifier, for: indexPath) as? PersonFollowingTableViewCell
        else {
            return UITableViewCell()
        }
        cell.configure(with: PersonFollowingTableViewCellViewModel(with: models[indexPath.row]))
        cell.delegate = self
        return cell
    }
}
extension ViewController: PersonFollowingTableViewCellDelegate {
    func personFollowingTableViewCell(_ cell: PersonFollowingTableViewCell, didTapWith viewMode: PersonFollowingTableViewCellViewModel) {
        
    }
}
