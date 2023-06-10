import Foundation

func solution(_ citations:[Int]) -> Int {
    
    var result: Int = 0
    let sorted = citations.sorted{$0 > $1}

    if sorted.min()! > sorted.count {
        result = sorted.count
    } else {
        for i in 0..<sorted.count {
            if i+1 > sorted[i] {
                result = i
                break
            }
        }
    }
    return result
}
let result = solution([3, 0, 6, 1, 5])
print(result)
