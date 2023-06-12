import Foundation

func implementation3() {
    let aa = readLine()!.components(separatedBy: " ")
    let basic: [Int] = [1, 1, 2, 2, 2, 8]
    let input = aa.map { Int($0)! }
    print(input)
    var result: [Int] = []
    for i in 0..<basic.count {
        if input[i] < basic[i] {
            let cal = basic[i] - input[i]
            result.append(cal)
        } else if input[i] > basic[i] {
            let cal = basic[i] - input[i]
            result.append(cal)
        } else {
            result.append(0)
        }
    }
    let StringResult = result.map { String($0)}
    let finalResult = StringResult.joined(separator: " ")
    print("finalResult",finalResult)

}
