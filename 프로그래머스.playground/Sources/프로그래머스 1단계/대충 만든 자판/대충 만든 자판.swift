import Foundation

func solution(
    _ keymap:[String],
    _ targets:[String]
) -> [Int] {

    let keymap: [[String]] = keymap.map { $0.map { String($0) } }
    let targets: [[String]] = targets.map { $0.map { String($0) } }

    var mapping: [String: Int] = [:]

    for key in keymap {
        for index in 0..<key.count {
            let char: String = key[index]

            if let value: Int = mapping[char] {
                let newValue: Int = min(value, index+1)
                mapping[char] = newValue
            } else {
                mapping[char] = index+1
            }
        }
    }

    var answer: [Int] = []

    for target in targets {
        var count: Int = 0
        for char in target {
            if let value: Int = mapping[char] {
                count += value
            } else {
                count = -1
                break
            }
        }
        answer.append(count)
    }


    return answer
}
