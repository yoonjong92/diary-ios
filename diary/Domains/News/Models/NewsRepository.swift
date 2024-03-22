//
//  NewsRepository.swift
//  diary
//
//  Created by 박윤종 on 3/19/24.
//

import Foundation

class NewsModel : ObservableObject {
    static let shared = NewsModel()
    private init() { }
    @Published var posts = [NewsArticle]()
    
    
    func fetchData(){
        
        let apiKey = "75f749b63b1b44349c3c738612d2db04"
        
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=kr&apiKey=\(apiKey)") else{
            return
        }
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error.localizedDescription)
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                // 실패
                self.posts = []
                return
            }
            guard let data = data else{
                return
            }
            do{
                let apiResponse = try JSONDecoder().decode(GetArticlesResponse.self, from: data)
                DispatchQueue.main.async {
                    self.posts = apiResponse.articles;
                }
            }catch(let err){
                print(err.localizedDescription)
            }
        }
        task.resume()
    }
}
