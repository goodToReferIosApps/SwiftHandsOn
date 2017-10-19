//
//  TweetCell.swift
//  TwitterPrototype
//
//  Created by Patnayak, Nilikh on 10/16/17.
//  Copyright © 2017 Patnayak, Nilikh. All rights reserved.
//

import LBTAComponents

class TweetCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            guard let tweet = datasourceItem as? Tweet else { return }
            let attributedString = NSMutableAttributedString(string: tweet.user.name, attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 16)])
            
            let userName = "  \(tweet.user.username) \n"
            let attributedUserName = NSMutableAttributedString(string: userName, attributes: [NSFontAttributeName:UIFont.systemFont(ofSize: 15), NSForegroundColorAttributeName: UIColor.gray])
            attributedString.append(attributedUserName)
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 4
            attributedString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSMakeRange(0, attributedString.string.characters.count))
            
            let attributedMessage = NSMutableAttributedString(string: tweet.message, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 14)])
            attributedString.append(attributedMessage)
            
            messageTextView.attributedText = attributedString
        }
    }
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "profile_image")
        return imageView
    }()
    
    let messageTextView: UITextView = {
        let tv = UITextView()
        tv.text = "Some text that i want to show in text view"
        tv.backgroundColor = .clear
        
        return tv
    }()
    
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        backgroundColor = .white
        
        addSubview(profileImageView)
        addSubview(messageTextView)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        messageTextView.anchor(topAnchor, left: profileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 4, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}
