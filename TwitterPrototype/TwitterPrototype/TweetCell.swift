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
    
    let replyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "reply").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let retweetButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "retweet").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "like").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let messageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "send_message").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
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
    
        setupBottomButtonsStackView()
    }
    
    fileprivate func setupBottomButtonsStackView() {
        let view1 = UIView()
        let view2 = UIView()
        let view3 = UIView()
        let view4 = UIView()
        let buttonStackView = UIStackView(arrangedSubviews: [view1, view2, view3, view4])
        buttonStackView.distribution = .fillEqually
        buttonStackView.axis = .horizontal
        
        addSubview(buttonStackView)
        addSubview(replyButton)
        addSubview(retweetButton)
        addSubview(likeButton)
        addSubview(messageButton)
    
        buttonStackView.anchor(nil, left: messageTextView.leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 4, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        replyButton.anchor(buttonStackView.topAnchor, left: view1.leftAnchor, bottom: buttonStackView.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 0)
        retweetButton.anchor(buttonStackView.topAnchor, left: view2.leftAnchor, bottom: buttonStackView.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 0)
        likeButton.anchor(buttonStackView.topAnchor, left: view3.leftAnchor, bottom: buttonStackView.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 0)
        messageButton.anchor(buttonStackView.topAnchor, left: view4.leftAnchor, bottom: buttonStackView.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 0)
    }
}
