//
//  SearchResult.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 18.09.2022.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    var averageUserRating: Float?
}
