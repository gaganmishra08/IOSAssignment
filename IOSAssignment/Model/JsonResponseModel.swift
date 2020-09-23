//
//  JsonResponseModel.swift
//  IOSAssignment
//
//  Created by Gagandeep Mishra on 23/09/20.
//

import Foundation

// MARK: - Welcome
struct JsonResponse: Codable {
    let title: String
    let rows: [JsonObjects]
}

// MARK: - Row
struct JsonObjects: Codable {
    let title, rowDescription: String?
    let imageHref: String?

    enum CodingKeys: String, CodingKey {
        case title
        case rowDescription = "description"
        case imageHref
    }
}
