import UIKit

// 1 : 70 : 70

// 2 : 11 : 10


func secondsToHoursMinutesSeconds(_ seconds: Int) -> (Int, Int, Int) {
    var (hrs, mins, secs) = (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
    hrs = hrs % 24
    return (hrs, mins, secs)
}

print(secondsToHoursMinutesSeconds(70 + 70 * 60 + 1 * 60 * 60))
