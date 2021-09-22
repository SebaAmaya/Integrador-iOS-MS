//
//  ServiceManager.swift
//  Integrador-iOS
//
//  Created by Sebastian Andres Amaya Grez on 20-09-21.
//

import Foundation
import Alamofire

class ServiceManager {
 
    let apiClient = AlamofireApiClient()
    
    
    func getSuggestion(price: Double, participants: String, activity: String?, completion: @escaping (Suggestion) -> Void){
        
        var serviceString = ""
        
        if activity != nil{
            serviceString = "https://www.boredapi.com/api/activity?&price=" + String(price) + "&participants=" + participants + "&type=" + activity!
        } else {
            serviceString = "https://www.boredapi.com/api/activity?&price=" + String(price) + "&participants=" + participants
        }
        apiClient.get(url: serviceString) { response in
            switch response {
            case .success(let data):
                do {
                    if let data = data {
                        let suggestion = try JSONDecoder().decode(Suggestion.self, from: data)
                        completion(suggestion) }
                } catch {
                    print(error)
                }
            case .failure(_):
               print("")
            }
        } 
    }
    
    
//    let request = AF.request("https://www.boredapi.com/api/activity?&price=0&participants=1&type=education")
//    request.responseJSON { (data) in
//        do {
//            let suggest = try JSONDecoder().decode(Suggestion.self, from: data.data!)
//            print(suggest)
//        }catch{
//            print(error)
//        }
//    }

    
}
