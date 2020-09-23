//
//  DetaildVC.swift
//  IOSAssignment
//
//  Created by Gagandeep Mishra on 23/09/20.
//

import UIKit

class DetaildVC: UIViewController {

    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var imageData: UIImageView!
    var data:JsonObjects?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = data?.title ?? ""
        self.imageData.sd_setImage(with: URL(string: data?.imageHref ?? ""), placeholderImage:UIImage(named: "placeholder"),  context: nil)
        self.descriptionLbl.text = data?.rowDescription ?? ""

    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
