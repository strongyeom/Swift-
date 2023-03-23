import Foundation

func solution(_ array: [Int], _ n: Int) -> Int {
    
    var a1 = n
    var result = 0
    
    for i in array {
        result += a1/i
        print(result)
        a1 = a1%i
    }
    
    return result
}
