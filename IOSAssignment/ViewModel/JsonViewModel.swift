//
//  JsonViewModel.swift
//  IOSAssignment
//
//  Created by Gagandeep Mishra on 23/09/20.
//

import Foundation
class JsonViewModel:NSObject{
    var jsonObjectArr:[JsonResponse] = [JsonResponse]()
    func getJsonData(){
        let url = Utility.shared.urlString
        let urlObj = URL(string: url)!
        URLSession.shared.dataTask(with: urlObj) {(data, responds, Error) in

          do {
          var countories = try JSONDecoder().decode([JsonResponse].self, from: data!)
           for country in countories {


               }
               } catch {
                print(" not ")
               }
            }.resume()
    }
    
    func numberOfRow(index:Int) -> Int{
        return jsonObjectArr.count
    }
    func cellRowIndexPath(index:Int) -> JsonResponse{
        retun JsonResponse
    }
    
}
