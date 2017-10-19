//
//  HomeDatasource.swift
//  TwitterPrototype
//
//  Created by Patnayak, Nilikh on 10/3/17.
//  Copyright © 2017 Patnayak, Nilikh. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let brian = User(name: "Brian", username: "@brian", bioText: "This is biotext of brian This is biotext of brian This is biotext of brian This is biotext of brian This is biotext of brian This is biotext of brian ", profileImage: #imageLiteral(resourceName: "profile_image"))
        let ray = User(name: "Ray", username: "@ray", bioText: "This is ray, checkout the latest videos for swift programming samples This is ray, checkout the latest videos for swift programming samples This is ray, checkout the latest videos for swift programming samples This is ray, checkout the latest videos for swift programming samples This is ray, checkout the latest videos for swift programming samples.", profileImage: #imageLiteral(resourceName: "ray_profile_image"))
        let kindleCourse = User(name: "Kindle", username: "@kindle", bioText: "This is kindle biotext", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        return [brian, ray, kindleCourse]
    }()
    
    let tweets: [Tweet] = {
        let brian = User(name: "Brian", username: "@brian", bioText: "This is biotext of brian This is biotext of brian This is biotext of brian This is biotext of brian This is biotext of brian This is biotext of brian ", profileImage: #imageLiteral(resourceName: "profile_image"))
        let tweet = Tweet(user: brian, message: "This is 9th episode of build that app.This is 9th episode of build that app.This is 9th episode of build that app.This is 9th episode of build that app.This is 9th episode of build that app.This is 9th episode of build that app.This is 9th episode of build that app.This is 9th episode of build that app.This is 9th episode of build that app.")
        
        let tweet2 = Tweet(user: brian, message: "This is the second tweet for our sample project is the second tweet for our sample project is the second tweet for our sample project is the second tweet for our sample project is the second tweet for our sample project is the second tweet for our sample project is the second tweet for our sample project is the second tweet for our sample project ")
        
        let tweet3 = Tweet(user: brian, message: "This is third tweet for our sample project This is third tweet for our sample project This is third tweet for our sample project This is third tweet for our sample project This is third tweet for our sample project This is third tweet for our sample project This is third tweet for our sample project ")
        
        let tweet4 = Tweet(user: brian, message: "This is fourth tweet for our sample project This is third tweet for our sample project This is third tweet for our sample project This is third tweet for our sample project This is third tweet for our sample project This is third tweet for our sample project This is third tweet for our sample project ")
        
        return [tweet, tweet2, tweet3, tweet4]
        
    }()
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
}
