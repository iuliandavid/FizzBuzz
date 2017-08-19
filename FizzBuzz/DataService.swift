//
//  DataService.swift
//  FizzBuzz
//
//  Created by iulian david on 11/22/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import Foundation

/**
 Singleton for operation with UserDefaults
 */
class DataService {
    
    static let instance = DataService()
    
    //Setting init to private makes to access possible
    private init(){}
    
    
    func persistToUserDefaults(key: String, value: Any) {
        //persist the highest score to userDefaults
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
}
