import Foundation

func solutionf(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    
    // 1점부터 k점까지 점수의 수
    // k점이 최상품
    // 한 상자에 사과를 m개씩 담아 포장
    // p: 가장 낮은 점수
    // 최대 이익을 얻기 위해서 구성된 사과 상자
    
    var sortArray = score.sorted(by: >)
    var answer = 0
    var start = m-1
    
    while start < sortArray.count {
       answer += sortArray[start]*m
        start += m
    }
    
    return answer
}
/*
 실패 케이스
 func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
     
     // 1점부터 k점까지 점수의 수
     // k점이 최상품
     // 한 상자에 사과를 m개씩 담아 포장
     // p: 가장 낮은 점수
     // 최대 이익을 얻기 위해서 구성된 사과 상자
     
     var sortArray = score.sorted(by: >)
     print(sortArray)
     var result = 0
     
     // 시간 복잡도 때문에 11- 15 시간 초과
     while sortArray.count >= m {
         var bb = sortArray[0..<m]
         sortArray.removeSubrange(0..<m)
         result += bb.min()! * m
     }
     print(result)
     
     return result
 }
 
  다른 풀이
  2023.04.29
  func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
      let s = score.sorted(by: >)
      var answer = 0
      for i in stride(from: m-1, to: score.count, by: m) {
          answer += s[i]*m
      }
      
      
      return answer
  }
 */
