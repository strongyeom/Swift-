import Foundation

func solution(_ array: [Int], _ m: Int, _ k: Int) -> Int {
    
    let arrsory = array.sorted() //[2, 4, 4, 5, 6]
    
    let maxfirst = arrsory[array.count-1] // 6
    let maxSecond = arrsory[array.count-2] // 5
    
    let result = (((m/k)*k)*maxfirst) + (m%k)*maxSecond
    
    print(result)
    return 0
}
