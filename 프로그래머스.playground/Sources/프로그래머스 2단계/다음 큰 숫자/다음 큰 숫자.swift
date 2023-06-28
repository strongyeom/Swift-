
import Foundation

func solution다음큰숫자(_ n:Int) -> Int {
    
    // n이 주어졌을때 다음 큰수를 구해라
    // 조건
    // 1. n보다 큰수여야함
    // 2. 2진수로 했을때 1의 갯수가 같아야함
    // 3. 1,2 조건을 만족하는 수 중 가장 작은 수
    
    // while문을 사용해서  false or true로 조건을 달아서 계속 반복해주면 어떨까?
    let first = String(n, radix: 2).filter { $0 == "1"}.count
    
    var nextN: Int = n
    var isTwoBinaryOneCount: Bool = false
    
    while isTwoBinaryOneCount == false {
        nextN += 1
        let second = String(nextN, radix: 2).filter { $0 == "1"}.count
        print("first",first)
        print("second",second)
        if first == second {
            print("2진수 1의 카운트가 같다면")
            isTwoBinaryOneCount = true
        }
        
    }
    return nextN
}
