//
//  CategoriesViewController.swift
//  Integrador-iOS
//
//  Created by Sebastian Andres Amaya Grez on 21-09-21.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var categories: [Category] = [Category(name: "education"),
                                  Category(name: "recreational"),
                                  Category(name: "social"),
                                  Category(name: "diy"),
                                  Category(name: "charity") ,
                                  Category(name: "cooking"),
                                  Category(name: "relaxation"),
                                  Category(name: "music"),
                                  Category(name: "busywork")]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tableView.dataSource = self
//        self.tableView.delegate = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }

    
}

extension CategoriesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let itemCategory = categories[indexPath.row].name
        cell.textLabel?.text = itemCategory
        return cell
    }
    
    
    
}
