//
//  UserInfo.swift
//  LoginProject
//
//  Created by Kim Do hyung on 2021/07/21.
//

import Foundation

class UserInformation {
    static let shared = UserInformation()
    var id: String?
    var password: String?
    
    private init() {}
}
