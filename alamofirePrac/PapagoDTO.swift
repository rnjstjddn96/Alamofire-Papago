//
//  PapagoDTO.swift
//  alamofirePrac
//
//  Created by 권성우 on 2020/06/10.
//  Copyright © 2020 권성우. All rights reserved.
//

import UIKit
import ObjectMapper

class PapagoDTO: Mappable {
    var message : Message?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        message <- map["message"]
    }
    
    class Message : Mappable{
        var result : Result?
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            result <- map["result"]
        }
        
        class Result : Mappable{
            required init?(map: Map) {
                
            }
            func mapping(map: Map) {
                translatedText <- map["translatedText"]
            }
            var translatedText : String?
            
            
        }
        
    }
    

}
