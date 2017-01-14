//
//  ViewController.swift
//  BusinessViewer
//
//  Created by Aarti Panda on 1/11/17.
//  Copyright © 2017 Aarti Panda. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var pictureView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    var token:String?
    
    let clientID = "2xtPDNRnr_toiEhI1V0W9w"
    
    let secret = "rt89Skh0SLJ2hfz9otXl5GfnrhusMhvt9I6bvepdYKkzcC7mbxmOp9fzfHbee2KJ"
    
    let baseURL = "https://api.yelp.com/oauth2/token"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getToken()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getToken(){
        Alamofire.request(baseURL, method: .post, parameters: ["grant_type" : "client_credentials", "client_id" : clientID, "client_secret" : secret], encoding: URLEncoding.default, headers: nil).responseJSON{ response in
            code
            
            if response.result.isSuccess{
                guard let info = response.result.value else{
                    print("Error")
                    return
                }
            
            }
        }
    }

}

