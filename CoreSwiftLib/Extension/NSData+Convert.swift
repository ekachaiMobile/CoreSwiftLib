//
//  NSData+Convert.swift
//  airmosphere
//
//  Created by ekachai limpisoot on 4/30/16.
//  Copyright © 2016 com.airasia. All rights reserved.
//

import Foundation
extension NSData
{
    class func convertDateFormString(dateStr : String, format : String) -> NSDate? {
        let dateFormatter = NSDateFormatter()
        //        dateFormatter.timeZone = NSTimeZone(abbreviation: "UTC")
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        dateFormatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)
        dateFormatter.dateFormat = format
        let date = dateFormatter.dateFromString(dateStr)
        return date;
    }
    
    class func stringFromTimeInterval(interval: NSTimeInterval) -> String {
        let interval = Int(interval)
        let seconds = interval % 60
        let minutes = (interval / 60) % 60
        let hours = (interval / 3600)
        return String(format: "%02d:%02d:%02d", hours, minutes,seconds)
    }
}
