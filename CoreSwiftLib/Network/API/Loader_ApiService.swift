//
//  ListLoader_ApiService.swift
//  Pods
//
//  Created by ekachai limpisoot on 4/15/16.
//
//

import Foundation
import Alamofire
import CryptoSwift

class Loader_ApiService : ApiService{
    
    
    func get_national_display(param: [String: AnyObject]? , completionHandler: @escaping (ServiceResponse) -> ()) -> (Alamofire.Request?) {
        
        var params = param
        if params == nil{
            params = Dictionary<String,AnyObject>()
            
        }
        params!["token"] = "1111111111111" as AnyObject?
        
        //let method: String = "publish/register"
        let method: String = "get_nationality/0"
        let url: String = "\(host)\(context)\(method)"
        
        let req = ApiService.reqToServerAsJSON(url: url, args: params, isPost: false){ responseData, error in
            let response_info :NSDictionary? = responseData
            
            let resService = ApiService.isServiceResponseError(res: response_info, er: error);
            if resService != nil {//error
                return completionHandler(resService!)
                
            }
            
            return completionHandler(ServiceResponse.getRespsWithRslt(rslt: response_info!))
        }
        return req
    }
    
    func get_country_display(param: [String: AnyObject]? , completionHandler: @escaping (ServiceResponse) -> ()) -> (Alamofire.Request?) {
        
        var params = param
        if params == nil{
            params = Dictionary<String,AnyObject>()
            
        }
        params!["token"] = "1111111111111" as AnyObject?
        
        //let method: String = "publish/register"
        let method: String = "get_country/0"
        let url: String = "\(host)\(context)\(method)"
        
        let req = ApiService.reqToServerAsJSON(url: url, args: params, isPost: false){ responseData, error in
            let response_info :NSDictionary? = responseData
            
            let resService = ApiService.isServiceResponseError(res: response_info, er: error);
            if resService != nil {//error
                return completionHandler(resService!)
                
            }
            
            return completionHandler(ServiceResponse.getRespsWithRslt(rslt: response_info!))
        }
        return req
    }
  
    
    
}
