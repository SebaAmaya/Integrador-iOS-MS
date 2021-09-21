//
//  CategoriesViewController.swift
//  Integrador-iOS
//
//  Created by Sebastian Andres Amaya Grez on 21-09-21.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var categories: [Category] = [Category(name: "Education"),
                                  Category(name: "Recreational"),
                                  Category(name: "Social"),
                                  Category(name: "Diy"),
                                  Category(name: "Charity") ,
                                  Category(name: "Cooking"),
                                  Category(name: "Relaxation"),
                                  Category(name: "Music"),
                                  Category(name: "Busywork")]
    
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
