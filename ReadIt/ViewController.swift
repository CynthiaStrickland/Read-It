//
//  ViewController.swift
//  ReadIt
//
//  Created by Cynthia Whitlatch on 2/24/17.
//  Copyright © 2017 Fenix Design. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books: [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "READ IT"
        tableView.register(BookCell.self, forCellReuseIdentifier: "cell")
        setupBooks()
        tableView.tableFooterView = UIView()
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count{
            return count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BookCell
            let book = books?[indexPath.row]
            cell.book = book
            return cell
    }

    
    func setupBooks() {
        
        let book1 = Book(title: "Steve Jobs", author: "Steve", bookImage: #imageLiteral(resourceName: "steve_jobs.jpg"), dateRead: "Read on 01/23/2017", notes: "Great")
        let book2 = Book(title: "Bill Gates Autobiography", author: "Michael Becraft",bookImage: #imageLiteral(resourceName: "bill_gates.jpg"), dateRead: "Read on 02/02/2017", notes: "Great")
        
        self.books = [book1, book2]
        
    }

    
}

