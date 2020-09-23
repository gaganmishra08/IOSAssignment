//
//  FoodCell.swift
//  IOSAssignment
//
//  Created by Gagandeep Mishra on 23/09/20.
//

import Foundation
import UIKit
import SDWebImage
class JsonTableCell: UITableViewCell{
    @IBOutlet weak var imageData: UIImageView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var descriptionLbl: UILabel!
    
    var model:JsonObjects?{
        didSet{
            self.imageData.sd_setImage(with: URL(string: model?.imageHref ?? ""), placeholderImage:UIImage(named: "placeholder"),  context: nil)
            self.titleLbl.text = model?.title ?? ""
            self.descriptionLbl.text = model?.rowDescription ?? ""
        }
    }
}
