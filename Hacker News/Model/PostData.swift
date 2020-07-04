//
//  PostData.swift
//  Hacker News
//
//  Created by Anshul Garg on 05/07/20.
//  Copyright © 2020 Anshul Garg. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
