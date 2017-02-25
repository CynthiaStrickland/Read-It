//
//  Books.swift
//  ReadIt
//
//  Created by Cynthia Whitlatch on 2/24/17.
//  Copyright © 2017 Fenix Design. All rights reserved.
//

import UIKit

class Books {
    var title : String?
    var author: String?
    var dateRead : NSDate?
    var notes : String?
    
    init(title: String, author:String, dateRead: NSDate, notes: String) {
        self.title = title
        self.author = author
        self.dateRead = dateRead
        self.notes = notes
    }
    
}
