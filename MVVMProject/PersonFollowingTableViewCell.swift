//
//  PersonFollowingTableViewCell.swift
//  MVVMProject
//
//  Created by Anas AbuZaitoun on 24/03/2021.
//

import UIKit

class PersonFollowingTableViewCell: UITableViewCell {

    static let identifier = "PersonFollowingTableViewCell"
    
    private let userImageView: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        return image
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let button: UIButton = {
        var button = UIButton()
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(userImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(usernameLabel)
        contentView.addSubview(button)
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        let imageWidth = contentView.frame.size.height - 10
        userImageView.frame = CGRect(x: 5, y: 5, width: imageWidth, height: imageWidth)
        nameLabel.frame = CGRect(x: imageWidth + 10, y: 0, width: contentView.frame.size.height - imageWidth, height: contentView.frame.size.width/2)
        usernameLabel.frame = CGRect(x: imageWidth + 10, y: contentView.frame.size.height/2, width: contentView.frame.size.height - imageWidth, height: contentView.frame.size.width/2)
        button.frame = CGRect(x: contentView.frame.size.width - 120, y: 10, width: 110, height: contentView.frame.size.height - 20)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
