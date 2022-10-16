//
//  Service.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 19.09.2022.
//

import Foundation

class Service {
    
    static let shared = Service()
    
    func fetchApps(searchTerm: String, completion: @escaping (SearchResult?, Error?) -> ()) {
        
        let urlString = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"
        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    func fetchTopGrossing(completion: @escaping (AppGroup?, Error?) -> ()) {
        
        let urlString = "https://rss.applemarketingtools.com/api/v2/us/apps/top-free/10/apps.json"
        fetchAppGroup(urlString: urlString, completion: completion)
    }
    
    
    func fetchGames(completion: @escaping (AppGroup?, Error?) -> ()) {
        fetchAppGroup(urlString: "https://rss.applemarketingtools.com/api/v2/us/apps/top-paid/25/apps.json", completion: completion)
    }

    func fetchAppGroup(urlString: String, completion: @escaping (AppGroup?, Error?) -> ()) {
        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    func fetchSocialApps(completion: @escaping ([SocialApp]?, Error?) -> ()) {
        let urlString = "https://api.letsbuildthatapp.com/appstore/social"
        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    func fetchGenericJSONData<T: Decodable>(urlString: String, completion: @escaping (T?, Error?) -> ()) {
        guard let url = URL(string: urlString)
        else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                completion(nil, err)
                return
            }
            do {
                let objects = try JSONDecoder().decode(T.self, from: data!)
                completion(objects, nil)
            } catch {
                completion(nil, error)
            }
        }.resume()
    }
}
