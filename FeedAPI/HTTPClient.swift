//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Heber Raziel Alvarez Ruedas on 26/12/22.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
 
public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}
