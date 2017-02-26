//
//  BookCell.swift
//  ReadIt
//
//  Created by Cynthia Whitlatch on 2/24/17.
//  Copyright © 2017 Fenix Design. All rights reserved.
//

import UIKit

class BookCell : UITableViewCell {
    
    var book: Book? {
        didSet {
                        
            coverImageView.image = book?.bookImage
            titleLabel.text = book?.title
            authorLabel.text = book?.author
            dateReadLabel.text = book?.dateRead
            
        }
    }
    let coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "steve_jobs")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel : UILabel = {
        let titleOfBook = UILabel()
        titleOfBook.translatesAutoresizingMaskIntoConstraints = false
        return titleOfBook
    }()
    
    let authorLabel:UILabel = {
        let authorOfBook = UILabel()
        authorOfBook.translatesAutoresizingMaskIntoConstraints = false
        return authorOfBook
    }()
    
    let dateReadLabel:UILabel = {
        let date = UILabel()
        date.translatesAutoresizingMaskIntoConstraints = false
        date.font = UIFont.boldSystemFont(ofSize: 11)
        return date
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(coverImageView)
        coverImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        coverImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        coverImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        coverImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(titleLabel)
        titleLabel.leftAnchor.constraint(equalTo: coverImageView.rightAnchor, constant: 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -20).isActive = true
        
        addSubview(authorLabel)
        authorLabel.leftAnchor.constraint(equalTo: coverImageView.rightAnchor, constant: 20).isActive = true
        authorLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        authorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4).isActive = true
        
        addSubview(dateReadLabel)
        dateReadLabel.leftAnchor.constraint(equalTo: coverImageView.rightAnchor, constant: 8).isActive = true
        dateReadLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        dateReadLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        dateReadLabel.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 4).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
