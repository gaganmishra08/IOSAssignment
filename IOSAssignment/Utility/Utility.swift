//
//  Utility.swift
//  IOSAssignment
//
//  Created by Gagandeep Mishra on 23/09/20.
//

import Foundation
import UIKit
class Utility{
    static var shared = Utility()
    let urlString = "https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json"
    let imageCache = NSCache<NSString, UIImage>()
}
