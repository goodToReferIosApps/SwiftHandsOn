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
    
    
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
