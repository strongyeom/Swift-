import Foundation

func solution(_ numbers:[Int]) -> String {
    var strings = numbers.map { String($0)}
    print(strings)
    strings.sort {
        print("첫번째: ",$0+$1)
        print("두번째: ",$1+$0)
        // 오름차순으로 비교해서 $1값을 앞으로 가도록 정렬하는것
        return $0+$1 > $1+$0
    }
    
    let answer = strings.joined()
    
    if let number = Int(answer) {
        return String(number)
    }
    
    return answer
}
let result = solution([6, 10, 2])
print(result)
