//
//  JsonResponseModel.swift
//  IOSAssignment
//
//  Created by Gagandeep Mishra on 23/09/20.
//

import Foundation
struct JsonResponse:Codable{
    let title:String?
    let rows :[JsonObjects]?
  
}
struct JsonObjects:Codable{
    let title:String?
    let description:String?
    let imageHref:String
}
