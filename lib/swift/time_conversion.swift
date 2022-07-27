
// convert to military time
func timeConversion(s: String) -> String {
    let time = s.components(separatedBy: ":") // ["12", "00", "00AM"]
    let hour = time[0] // "12"
    let minute = time[1] // "00"
    let second = time[2] // "00AM"

    let ampm = second.dropFirst(2) // "AM"
    
    print(ampm)

    if ampm == "AM" && hour == "12" {
        return "00:\(minute):\(second.dropLast(2))"
    } else if ampm == "PM" && hour != "12" {
        return "\(Int(hour)! + 12):\(minute):\(second.dropLast(2))"
    } else {
        return "\(hour):\(minute):\(second.dropLast(2))"
    }
}