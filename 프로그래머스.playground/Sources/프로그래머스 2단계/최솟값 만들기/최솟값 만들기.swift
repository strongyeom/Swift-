import Foundation

func solution최솟값(_ A:[Int], _ B:[Int]) -> Int {
    
    // 첫번째 배열에서 가장 작은수 , 두번째 배열에서 가장 큰 수
    
    var first = A.sorted()
    var second = B.sorted(by: >)
    
    var count = 0
 
    for i in 0..<A.count {
        count += (first[i] * second[i])
    }
    
    
    
    return count
}
/*
 한줄로 정리
  let aa = (0..<A.count).map { first[$0] * second[$0] }.reduce(0, +)
 */
