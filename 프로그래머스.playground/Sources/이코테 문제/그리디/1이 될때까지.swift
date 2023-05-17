import Foundation

func solution(_ n: Int, _ k: Int) -> Int {
    
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

/*
 2023.05.17 풀이
 func solution(_ N: Int, _ K: Int) -> Int {
     
     // 계산 될 N을 변수로 만들기
     var countN: Int = N
     
     // 계산 횟수
     var result: Int = 0
     
     while countN > 1 {
         if countN%K == 0 {
             countN = countN/K
             result += 1
             print("나누기:",result)
         } else {
             countN -= 1
             result += 1
             print("마이너스:",result)
         }
     }
     
     print(result)
     
     
     return 0
 }
 */
