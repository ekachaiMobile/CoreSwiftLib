//
//  BusinessService.swift
//  Pods
//
//  Created by ekachai limpisoot on 4/15/16.
//
//

import Foundation
import Alamofire
import Haneke

typealias OnServiceDidFinish = (ServiceResponse?) -> Void
typealias OnServiceInProgress = (NSDictionary?) -> Void

class BusinessService : NSObject{
    let cache = Shared.dataCache
    var requestService: Alamofire.Request?
    var listener: ServiceListener? = nil
    var onServiceDidFinish : OnServiceDidFinish!
    var onServiceInProgress : OnServiceInProgress!
    
    func pushServiceToQueue(method:Selector ,object arg:[String: AnyObject]?) {
        
        dispatch_async(dispatch_get_main_queue(), {
            Thread.detachNewThreadSelector(method, toTarget:self, with:arg)
        })
        
    }
    
    
    func callStartCall(object :AnyObject?){
        if self.listener!.responds(to: #selector(ServiceListener.startCall)) {
            dispatch_async(dispatch_get_main_queue(), {
                self.listener!.startCall!()
            })
        }
    }
    
    func callUpdateFromCache(resp:ServiceResponse){
        resp.caller = self;
        if (resp.errCd == ServiceResposeCancelService) {return}
        if self.listener!.respondsToSelector(#selector(ServiceListener.updateFromCache(_:))) {
            dispatch_async(dispatch_get_main_queue(), {
                let _ = self.listener!.updateFromCache!(resp: resp)
            })
        }
    }
    
    func callendCall(resp:ServiceResponse){
    
        resp.caller = self;
        if (resp.errCd == ServiceResposeCancelService) {return}
        if self.listener!.respondsToSelector(#selector(ServiceListener.endCall(_:))) {
            dispatch_async(dispatch_get_main_queue(), {
                let _ = self.listener!.endCall!(resp: resp)
            })
        }
        
        dispatch_async(dispatch_get_main_queue(), {
            if self.onServiceDidFinish != nil{
                self.onServiceDidFinish(resp);
            }
        })
        
        
    }
    
    func callstartCall(resp:ServiceResponse){
        
        resp.caller = self;
        
        if self.listener!.responds(to: #selector(ServiceListener.startCall)) {
            dispatch_async(dispatch_get_main_queue(), {
                self.listener!.startCall!()
            })
        }
    }
    
    func cancel(){
        if self.requestService != nil {
            self.requestService!.cancel()
            print("cancel service")
        }
    }
    
}
