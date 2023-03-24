import Foundation

func solution2(_ n: Int, _ k: Int) -> Int {
    
    // 1번은 n -1
    // 2번은 if n%k == 0 이라면 실행
    
    var result = 0
    var a1 = n
    
    while a1 > 1 {
        
        if a1%k == 0 {
            a1 = a1/k
            result += 1
        } else {
            a1 = a1 - 1
            result += 1
        }
    }
    print(result)
    
    return 0
}
