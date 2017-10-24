//
//  Service.swift
//  TwitterPrototype
//
//  Created by Patnayak, Nilikh on 10/23/17.
//  Copyright © 2017 Patnayak, Nilikh. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct Service {
    
    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    
    static let sharedInstance = Service()
    
    
    class JSONError: JSONDecodable {
        required init(json: JSON) throws {
            print("Json error")
        }
    }
    
    
    func fetchHomeFeed(completion: @escaping (HomeDatasource?, Error?) -> ()) {
        let request: APIRequest<HomeDatasource, JSONError> = tron.request("/twitter/home_with_error")
        
        request.perform(withSuccess: { (homeDataSource) in
            completion(homeDataSource, nil)
        }) { (err) in
            print("Failed to fetch json", err)
            completion(nil, err)
        }
    }
}
