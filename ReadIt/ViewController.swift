//
//  ViewController.swift
//  ReadIt
//
//  Created by Cynthia Whitlatch on 2/24/17.
//  Copyright © 2017 Fenix Design. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var books = [Book]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "KINDLE"
        tableView.register(BookCell.self, forCellReuseIdentifier: "cell")
        setupBooks()
        tableView.tableFooterView = UIView()
    }
    
    func setupBooks() {
        
        let date = NSDate()
        
        let book = Book(title: "Steve Jobs", author: "Steve", dateRead: date, notes: "Great")
        let book2 = Book(title: "Bill Gates Autobiography", author: "Michael", dateRead: date, notes: "Great")
        
        
        self.books = [book, book2]
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        return cell
    }
    
}

