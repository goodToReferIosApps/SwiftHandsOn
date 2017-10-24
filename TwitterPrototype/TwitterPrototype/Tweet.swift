//
//  Tweet.swift
//  TwitterPrototype
//
//  Created by Patnayak, Nilikh on 10/19/17.
//  Copyright © 2017 Patnayak, Nilikh. All rights reserved.
//

import Foundation
import SwiftyJSON
import TRON

struct Tweet : JSONDecodable {
    let user: User
    let message: String
    
    init(json: JSON) {
        self.user = User(json: json["user"])
        self.message = json["message"].stringValue
    }
}
