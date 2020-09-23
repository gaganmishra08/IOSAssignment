//
//  JsonViewModel.swift
//  IOSAssignment
//
//  Created by Gagandeep Mishra on 23/09/20.
//

import Foundation
import Alamofire
class JsonViewModel:NSObject{
    var jsonObjectArr:[JsonObjects] = [JsonObjects]()
    func getJsonData(completion:@escaping ((_ success: Bool) -> Void)){
        let url = Utility.shared.urlString
        let urlObj = URL(string: url)!
        
        
        AF.request(urlObj).responseJSON { response in
                print(response.data!)
                do {
                    let str = String(decoding: response.data!, as: UTF8.self)
                    let jsonString = str
                    let data: Data? = jsonString.data(using: .utf8)
                   
                    
                    let jsonData = try JSONDecoder().decode(JsonResponse.self, from: data!)
                    self.jsonObjectArr.append(contentsOf: jsonData.rows)
                    completion(true)
                    
                    
                } catch {
                    print(" not ")
                }
        }
        
    }
    
    func numberOfRow() -> Int{
        return jsonObjectArr.count
    }
    func cellRowIndexPath(index:Int) -> JsonObjects{
        
        return self.jsonObjectArr[index]
    }
    func didSelectIndexPath(index:Int) -> JsonObjects{
        
        return self.jsonObjectArr[index]
    }
}
