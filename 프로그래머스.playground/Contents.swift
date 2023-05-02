import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    // 2
    var now = section[0]
    var counter = 0
    
    // [2, 3, 6]
    for s in section {
        // 2
        if s >= now {
            counter += 1
            // 2 + 4
            now = s + m
        }
    }

    return counter
}

let result = solution(8, 4, [2, 3, 6])
print(result)
