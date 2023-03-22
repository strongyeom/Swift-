import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    //Set을 사용하면 중복된 것을 제거 할 수있다.
    
    var result: [Int] = []
    var finalResult: [Int] = []
    
    for i in 0..<numbers.count {
        for j in 1..<numbers.count {
            if i != j {
                result.append(numbers[i] + numbers[j])
            }
        }
       finalResult = Set(result).sorted()
       
    }
    
    return finalResult
}
