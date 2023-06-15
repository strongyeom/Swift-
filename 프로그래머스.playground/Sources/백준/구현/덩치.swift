import Foundation

func implementation4() {
    let input = Int(readLine()!)!
    var result: [[Int]] = []
    var finalArray: [Int] = []
    for _ in 0..<input {
        let weightAndHeight = readLine()!.components(separatedBy: " ").map { Int($0)! }
        // 배열에 담기
        result.append(weightAndHeight)
        
    }

    print("result",result)

    for i in 0..<result.count {
        var count = 1
        for j in 0..<result.count {
            if result[i][0] < result[j][0] && result[i][1] < result[j][1] {
                count += 1
            }
        }
        finalArray.append(count)
    }
    print("finalArray",finalArray)
    let aa = finalArray.map { String($0) }.joined(separator: " ")
    print("aa",aa)


}
