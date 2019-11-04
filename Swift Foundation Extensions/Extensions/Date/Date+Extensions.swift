//
//  Date+Extensions.swift
//  Swift Foundation Extensions
//
//  Created by Mohamed Elbana on 10/4/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation

extension Date {
    
    public var timeAgo: String {
        let calander = Calendar.current
        let components = calander.dateComponents([.second, .minute, .hour, .day, .month, .year], from: self, to: Date())
        
        if let years = components.year, years > 0 {
            if years < 2 {
                return "Last year"
            }
            return "\(years) years ago"
        }
        
        if let months = components.month, months > 0 {
            if months < 2 {
                return "Last month"
            }
            return "\(months) months ago"
        }
        
        if let days = components.day, days >= 7 {
            let weeks = days / 7
            if weeks < 2 {
                return "Last week"
            }
            return "\(weeks) weeks ago"
        }
        
        if let days = components.day, days > 0 {
            if days < 2 {
                return "Yesterday"
            }
            return "\(days) days ago"
        }
        
        if let hours = components.hour, hours > 0 {
            if hours < 2 {
                return "An hour ago"
            }
            return "\(hours) hours ago"
        }
        
        if let minutes = components.minute, minutes > 0 {
            if minutes < 2 {
                return "A minute ago"
            }
            return "\(minutes) minutes ago"
        }
        
        if let seconds = components.second, seconds > 0 {
            if seconds < 5 {
                return "Just now"
            }
            return "\(seconds) seconds ago"
        }
        return ""
    }
    
    public var year: Int {
        return Calendar.current.component(.year, from: self)
    }
    
    public var isLeapYear: Bool {
        let year = self.year
        return ( (year % 100 != 0) && (year % 4 == 0) ) || year % 400 == 0
    }
    
    public var month: Int {
        return Calendar.current.component(.month, from: self)
    }
    
    public var weekDay: Int {
        return Calendar.current.component(.weekday, from: self)
    }
    
    public var weekDayFromMonday: Int {
        var day = self.weekDay - 2
        if day < 0 {
            day = 6
        }
        return day
    }
    
    public var week: Int {
        return Calendar.current.component(.weekOfYear, from: self)
    }
    
    public var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    
    public var hour: Int {
        return Calendar.current.component(.hour, from: self)
    }
    
    public var minute: Int {
        return Calendar.current.component(.minute, from: self)
    }
    
    public var second: Int {
        return Calendar.current.component(.second, from: self)
    }
    
    public var quarter: Int {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "Q"
        return Int(dateFormatter.string(from: self))!
    }
    
    /**
     Returns the distance in years from a given Date object (uses the current calendar)
     
     - parameter from date: The date to calculate the distance from
     - returns: Distance in years
     */
    public func years(from date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: self, to: date).year!
    }
    
    /**
     Returns the distance in months from a given Date object (uses the current calendar)
     
     - parameter from date: The date to calculate the distance from
     - returns: Distance in months
     */
    public func months(from date: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: self, to: date).month!
    }
    
    /**
     Returns the distance in weeks from a given Date object (uses the current calendar)
     
     - parameter from date: The date to calculate the distance from
     - returns: Distance in weeks
     */
    public func weeks(from date: Date) -> Int {
        return Calendar.current.dateComponents([.weekOfYear], from: self, to: date).weekOfYear!
    }
    
    /**
     Returns the distance in days from a given Date object (uses the current calendar)
     
     - parameter from date: The date to calculate the distance from
     - returns: Distance in days
     */
    public func days(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: self, to: date).day!
    }
    
    /**
     Returns the distance in hours from a given Date object (uses the current calendar)
     
     - parameter from date: The date to calculate the distance from
     - returns: Distance in hours
     */
    public func hours(from date: Date) -> Int {
        return Calendar.current.dateComponents([.hour], from: self, to: date).hour!
    }
    
    /**
     Returns the distance in minutes from a given Date object (uses the current calendar)
     
     - parameter from date: The date to calculate the distance from
     - returns: Distance in minutes
     */
    public func minutes(from date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: self, to: date).minute!
    }
    
    /**
     Returns the distance in seconds from a given Date object (uses the current calendar)
     
     - parameter from date: The date to calculate the distance from
     - returns: Distance in seconds
     */
    public func seconds(from date: Date) -> Int {
        return Calendar.current.dateComponents([.second], from: self, to: date).second!
    }
}
