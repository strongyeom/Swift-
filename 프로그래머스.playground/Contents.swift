import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    // 가장 큰수부터 k번째 까지 끊기
    
    var result: [Int] = []
    var emptyArray: [Int] = []
    for i in 0..<score.count {
        
        result.append(score[i])
        result.sorted(by: <)
        
    }
    
    
    
    
    
    
    // 끊은 k번째 마지막 최하위 배열에 추가하기
    
    
    
    
    
    return []
}
let result = solution(3, [10, 100, 20, 150, 1, 100, 200])
print(result)


