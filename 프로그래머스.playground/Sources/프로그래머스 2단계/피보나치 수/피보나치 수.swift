import Foundation

func solution피보나치수(_ n:Int) -> Int {
    
    // 고정 값으로는 0이면 0, 1이면 1
    
    // 2라면 0 + 1
    // 3이라면 1 + 1 + 0
    // 4라면 1 + 1 + 1 + 0
    // [0,1]
    // [0,1,1]
    // [0,1,1,2]
    
    var fibo = [0, 1]
    
    for i in 2...n {
        fibo.append(fibo[i-2] + fibo[i-1])
    }
    print("fibo",fibo)
    return fibo.last!
}
