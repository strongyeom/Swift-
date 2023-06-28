import Foundation

func solution삼총사(_ number:[Int]) -> Int {
    
    
    // 배열안에 있는 세가지 수를 더하여 0이 되는 갯수
    // 첫번째 하나 뽑고 나머지 두개를 남은 배열에서 뽑으고 연산 = 0 이 되는 것만
    
    var result = 0
    
    for i in 0..<number.count {
        for j in i+1..<number.count {
            for k in j+1..<number.count {
                if number[i] + number[j] + number[k] == 0 {
                    result += 1
                }
            }
        }
    }
    return result
}
