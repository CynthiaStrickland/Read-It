//
//  Books.swift
//  ReadIt
//
//  Created by Cynthia Whitlatch on 2/24/17.
//  Copyright © 2017 Fenix Design. All rights reserved.
//

import UIKit

class Book {
    var title : String
    var author: String
    var bookImage: UIImage
    var dateRead : String
    var notes : String
    
    init(title: String, author:String, bookImage: UIImage, dateRead: String, notes: String) {
        self.title = title
        self.author = author
        self.bookImage = bookImage
        self.dateRead = dateRead
        self.notes = notes
    }
    
}
