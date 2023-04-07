import Foundation

func solution(_ food:[Int]) -> String {
    
    // for문의 인덱스를 1부터 시작
    var b1: String = ""
    
    for i in 1..<food.count {
        var a1 = 0
        a1 = food[i]/2
        if a1 > 0 {
            for _ in 0..<a1 {
                b1 += String(i)
            }
        }
        
    }
    
    
    
    return b1 + String("0") + b1.reversed()
}
let result = solution([1, 3, 4, 6])
print(result)
