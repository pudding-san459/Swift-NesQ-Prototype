//
//  UserManager.swift
//  NesQ_final
//
//  Created by STDC_MACBOOK_25 on 26/07/2023.
//

import Foundation

class UserManager {
    static let shared = UserManager()
    
    private var users: [String: String] = [:] // Dictionary to store username and password
    
    private init() {}
    
    // Function to register a new user
    func registerUser(email: String, password: String) {
        users[email] = password
    }
    
    // Function to authenticate a user
    func authenticateUser(email: String, password: String) -> Bool {
        if let storedPassword = users[email] {
            return storedPassword == password
        }
        return false
    }
}
