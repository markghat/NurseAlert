//
//  APIClient.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/10/23.
//

import Foundation

protocol APIClient {
  var session: URLSession { get }
}

extension APIClient {
    
//    func performRequest<Response:Decodable>(url: String) async throws -> Response {
//        let url_link = URL(string: url)
//        let request = NSMutableURLRequest(url: url_link! as URL)
//            request.setValue("2", forHTTPHeaderField: "hospital_id")
//            request.httpMethod = "GET"
//            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        var str = "empty"
//        let task: Response = URLSession.shared.dataTask(with: request as URLRequest) {
//            data, response, error in
//            if let data = data, let string = String(data: data, encoding: .utf8) {
//                str = string
//                print(string)
//
//            } else {
//                return
//            }
//        } as! Response
//        return task
//    }

    func performRequest(url: String) async throws -> [Hospital] {
    guard let url = URL(string: url) else { throw APIError.invalidUrl(url) }
    print(url)
    let response: [Hospital] = try await perform(request: URLRequest(url: url))
    print(response)
    return response
  }
  
    func perform(request: URLRequest) async throws -> [Hospital] {
    let (data, response) = try await session.data(for: request)

    guard let http = response as? HTTPURLResponse else { throw APIError.invalidResponse }
    guard http.statusCode == 200 else {
      switch http.statusCode {
      case 400...499:
        let body = String(data: data, encoding: .utf8)
        throw APIError.requestError(http.statusCode, body ?? "<no body>")
      case 500...599:
        throw APIError.serverError
      default: throw APIError.invalidStatusCode("\(http.statusCode)")
      }
    }
    do {
        let jsonDecode = JSONDecoder()
        return try jsonDecode.decode([Hospital].self, from: data)
    } catch let decodingError as DecodingError {
        print(decodingError)
        throw APIError.decodingError(decodingError)
    }
    do {
      let jsonDecoder = JSONDecoder()

      print("Dataaa!!!")
        print(type(of: data))
      
      return try jsonDecoder.decode([Hospital].self, from: data)
    } catch let decodingError as DecodingError {
      print("error was here!")
        print(decodingError)
      throw APIError.decodingError(decodingError)
    }
  }
}
