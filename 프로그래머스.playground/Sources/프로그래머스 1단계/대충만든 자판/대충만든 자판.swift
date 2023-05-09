import Foundation

func solution(
    _ keymap:[String],
    _ targets:[String]
) -> [Int] {

    let keymap: [[String]] = keymap.map { $0.map { String($0) } }
    print("keymap:",keymap)
    let targets: [[String]] = targets.map { $0.map { String($0) } }
    print("targets:",targets)

    var mapping: [String: Int] = [:]

    for key in keymap {
        for index in 0..<key.count {
            let char: String = key[index]
            print("char:",char)
            if let value: Int = mapping[char] {
                print("value:",value)
                let newValue: Int = min(value, index+1)
                print("newValue:",newValue)
                mapping[char] = newValue
                print("mapping[char]:",mapping[char])
            } else {
                
                mapping[char] = index+1
                print("mapping[char]+1:",mapping[char])
            }
            print("Dic:",mapping)
        }
    }

    var answer: [Int] = []

    for target in targets {
        var count: Int = 0
        for char in target {
            if let value: Int = mapping[char] {
                print("target:",value)
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
