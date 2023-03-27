import Foundation

func solution2_3(_ n: String) -> Int {

    // 문자가 주어졌을때 배열로 변환
    let a1 = n.map { String($0) }
    var first: Int = 0
    let second: Int = Int(a1[1])!
    
    var firstResult: Int = 0
    var secondResult: Int = 0
    
    // 문자열을 Int로 변환
    switch a1[0] {
    case "a":
        first = 1
    case "b":
        first = 2
    case "c":
        first = 3
    case "d":
        first = 4
    case "e":
        first = 5
    case "f":
        first = 6
    case "g":
        first = 7
    case "h":
        first = 8
    default:
        break
    }
    
    var count = 0
    let a3 = [(-2, -1), (-2, 1), (2, -1), (2, 1), (-1, 2), (-1, -2), (1, 2), (1, -2)]
    
    for i in a3 {
        
        firstResult = first + i.0
        secondResult = second + i.1
        print(firstResult, secondResult)
        if firstResult >= 1 && firstResult <= 8 && secondResult >= 1 && secondResult <= 8 {
            count += 1
            print(count)
        }
    }
    
    return count
    
}
