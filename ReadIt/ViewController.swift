//
//  ViewController.swift
//  ReadIt
//
//  Created by Cynthia Whitlatch on 2/24/17.
//  Copyright © 2017 Fenix Design. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let book = [Books]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "KINDLE"
        tableView.register(BookCell.self, forCellReuseIdentifier: "cell")
        setupBooks()
        tableView.tableFooterView = UIView()
    }
    
    func setupBooks() {
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        return cell
    }
    
    
}

