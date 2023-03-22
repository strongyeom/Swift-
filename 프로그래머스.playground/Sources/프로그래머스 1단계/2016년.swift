import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    
    let array: [String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    
    let days: [Int] = [31,29,31,30,31,30,31,31,30,31,30,31]
    
    var count = 0
    // a-1해준 이유 b가 주어지기 때문에 그전의 달까지 모두 합하고 이번달 일수를 더하면 됨
    for i in 0..<a-1 {
        count += days[i]
    }
    
    let dayIndex = (count + b)%7
    let result = array[dayIndex]
    return result
    
    /*
     var array: [String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
     
     var days: [Int] = [31,29,31,30,31,30,31,31,30,31,30,31]
     
     var dayIndex = days[0..<a-1].reduce(0) { $0 + $1 } % 7
     
     return array[dayIndex]
     */

}
