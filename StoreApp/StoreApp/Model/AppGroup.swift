//
//  AppGroup.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 02.10.2022.
//

import Foundation
struct AppGroup: Decodable {
    let feed: Feed
}
struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}
struct FeedResult: Decodable {
    let name, artistName, artworkUrl100: String
}
