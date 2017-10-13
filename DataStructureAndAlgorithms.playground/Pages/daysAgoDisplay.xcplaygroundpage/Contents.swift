//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

let pastDate = Date(timeIntervalSinceNow: -60*60*24*3)
let futureDate = Date(timeIntervalSinceNow: 60*60*24)



extension Date {
    func timeAgoDisplay() -> String {
        let secondsAgo = Int(Date().timeIntervalSince(self))
        let min = 60
        let hour =  min * 60
        let day = 24 * hour
        
        if secondsAgo < min {
            return "\(secondsAgo) seconds ago"
        } else if secondsAgo < hour {
            return "\(secondsAgo / min) mins ago"
        } else if secondsAgo < day {
            return "\(secondsAgo / hour) hours ago"
        } else {
            return "\(secondsAgo / day) days agp"
        }
    }
    
    func timeLaterDisplay() -> String {
        let secondsAgo = Int(self.timeIntervalSince(Date()))
        let min = 60
        let hour =  min * 60
        let day = 24 * hour
        
        if secondsAgo < min {
            return "\(secondsAgo) seconds later"
        } else if secondsAgo < hour {
            return "\(secondsAgo / min) mins later"
        } else if secondsAgo < day {
            return "\(secondsAgo / hour) hours later"
        } else {
            return "\(secondsAgo / day) days later"
        }
    }
}


pastDate.timeAgoDisplay()
futureDate.timeLaterDisplay()
