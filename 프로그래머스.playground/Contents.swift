import Foundation

func solution(_ dartResult:String) -> Int {
    
    var numbers = dartResult.split(whereSeparator: { $0.isLetter || $0 == "*" || $0 == "#"})
    var letters = dartResult.split(whereSeparator: { $0.isNumber })

    print (numbers)
    print (letters)
    
    var answer = numbers.map{ Int($0)! }
    
    print(answer)
    
    for (index, element) in letters.enumerated() {
        print("letter:", element)
        for c in element {
            print(c)
            switch c {
                case "D":
                    answer[index] = answer[index] * answer[index]
                case "T":
                    answer[index] = answer[index] * answer[index] * answer[index]
                case "*":
                    if (index != 0) {
                        answer[index] *= 2
                        answer[index - 1] *= 2
                    } else {
                        answer[index] *= 2
                    }
                case "#":
                    answer[index] *= -1
                default:
                    break
            }
            print(answer)
        }
    }
    
    return answer.reduce(0, +)
}

let result = solution("1S2D*3T")
print(result)
