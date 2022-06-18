//
//  Utils.swift
//  
//
//  Created by yosshi4486 on 2022/06/18.
//

import Foundation

extension OpenTwitterAPIClientAPI {

    /// Sets the given token to Bearer Authorization header. You can use this method regardless app level auth or user level auth.
    ///
    /// This method replaces an "Authorization" key of "customHeaders".
    ///
    /// - Parameters:
    ///   - token: The token for accessing twitter api.
    static func setToken(_ token: String) {
        customHeaders["Authorization"] = "Bearer \(token)"
    }

}
