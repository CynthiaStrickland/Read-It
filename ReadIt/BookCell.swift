//
//  BookCell.swift
//  ReadIt
//
//  Created by Cynthia Whitlatch on 2/24/17.
//  Copyright © 2017 Fenix Design. All rights reserved.
//

import UIKit

class BookCell : UITableViewCell {
    
    let coverImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.backgroundColor = .red
        
        return imageView
        
    }()
    
    let titleLabel : UILabel = {
        let titleOfBook = UILabel()
        titleOfBook.text = "This is text for the label"
        return titleOfBook
    }()
    
    let authorLabel:UILabel = {
        let authorOfBook = UILabel()
        authorOfBook.text = "Author of book"
        return authorOfBook
    }()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(coverImageView)
        coverImageView.frame = CGRect(x: 8, y: 8, width: 50, height: 64)
        addSubview(titleLabel)
        titleLabel.frame = CGRect(x: 66, y: 20, width: 200, height: 20)
        addSubview(authorLabel)
        authorLabel.frame = CGRect(x: 66, y: 45, width: 200, height: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
