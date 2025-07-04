//
//  APICaller.swift
//  NewsApp
//
//  Created by Nitesh Malhotra on 2025-07-03.
//
import Foundation
final class APICaller{
    static let shared = APICaller()
    struct constants
    {
        static let topHeadlinesUrl = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=02dc9952ec5349028225d3b642918e96")
    }
    private init(){}
    public func getTopStories (completion: @escaping (Result<[Article],Error>)->Void)
    {
        guard let url = constants.topHeadlinesUrl else {
            return
        }
        let task = URLSession.shared.dataTask(with: url){data , _, error in
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data {
                do {
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    print("Artciles:\(result.articles.count)")
                    completion(.success(result.articles))
                }
                catch {
                    completion(.failure(error))
                }
            }
            
        }
        task.resume()
    }
}

struct APIResponse: Codable
{
    let articles: [Article]
}
struct Article: Codable
{
    let source: Source
    let title: String
    let description: String?
    let url : String
    let urlToImage: String?
    let publishedAt: String?
    
}
struct Source : Codable
{
    let name: String
}
