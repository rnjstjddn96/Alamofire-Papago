//
//  ViewController.swift
//  alamofirePrac
//
//  Created by 권성우 on 2020/06/10.
//  Copyright © 2020 권성우. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var url = "https://openapi.naver.com/v1/papago/n2mt"
        let params = ["source":"ko",
                      "target":"en",
                      "text":"만나서 반갑습니다."]
        var header = ["Content-Type":"application/x-www-form-urlencoded; charset=UTF-8",
                      "X-Naver-Client-Id":"BhafFfLppWA_D3NM388F",
                      "X-Naver-Client-Secret":"g7h0AMbDLP"]
        
        Alamofire.request(url, method: .post, parameters: params, encoding: URLEncoding.default, headers: header).responseObject { (response:DataResponse<PapagoDTO>) in
            var papagoDTO = response.result.value
            print(papagoDTO?.message?.result?.translatedText)
            
        }
            
        
    }


}

