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
    
    
    func fetchHomeFeed(completion: @escaping (HomeDatasource) -> ()) {
        let request: APIRequest<HomeDatasource, JSONError> = tron.request("/twitter/home")
        
        request.perform(withSuccess: { (homeDataSource) in
            completion(homeDataSource)
        }) { (err) in
            print("Failed to fetch json", err)
        }
    }
}
