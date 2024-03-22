//
//  ApiRepository.swift
//  diary
//
//  Created by 박윤종 on 3/22/24.
//

import Foundation

class DiaryApiUtils {
    
    static let host = "http://localhost"
    
    static func get<T>(path: String, params: Dictionary<String,String>, completion: @escaping (T) -> Void) where T : Decodable {
        
        var components = URLComponents()
        components.host = host
        components.path = path
        components.queryItems = params.map{(key,value) in URLQueryItem(name: key,value: value)}
        
        
        guard let url = components.url else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "get"
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            if let data = data {
                let response = try? JSONDecoder().decode(T.self, from: data)
                
                if let response = response {
                    completion(response)
                } else {
                    // Error: Unable to decode response JSON
                }
            } else {
                // Error: API request failed

                if let error = error {
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
    
    static func post<T>(path: String, body: Encodable, completion: @escaping (T) -> Void) where T : Decodable {
        
        var components = URLComponents()
        components.host = host
        components.path = path
        
        guard let url = components.url else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "post"
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            request.httpBody = try JSONEncoder().encode(body)
        } catch {
            // Error: Unable to encode request parameters
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            if let data = data {
                let response = try? JSONDecoder().decode(T.self, from: data)
                
                if let response = response {
                    completion(response)
                } else {
                    // Error: Unable to decode response JSON
                }
            } else {
                // Error: API request failed

                if let error = error {
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
}
