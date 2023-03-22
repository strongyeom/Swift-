import Foundation

import Foundation

func solution(_ n:Int) -> Int {
    
    let a1: String = String(String(n, radix: 3).reversed())
    // 10진수에서 3진수나 2진수로 만들떄는 String으로 붙여주기
    // 2진수나 3진수에서 10진수로 넘거갈때는 Int 붙여주기
    return Int(a1, radix: 3)!

    
    // 다른 풀이
//    
//    var n = n
//    var array: [Int] = []
//    var res = 0
//
//    while n>0 {
//        array.append(n%3)
//        n = n/3
//    }
//    print(array)
//    //0 , 1, 2, 3
//    for i in 0..<array.count {
//        res = array[i] * (3*array.count-i)
//    }
//
//    return res
}
