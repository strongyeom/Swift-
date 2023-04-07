import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    
    var count = n
    var result = 0
    
//    while count >= a {
//        result += (count/a)*b
//        count = (count/a)*b + count%a
//    }
//
    
    // 통과는 하긴 하지만 print를 for문안에 찍어보면 불필요한 메모리 낭비가 있음 else문을 사용하여 return 하기
    for _ in 1...n {
        if count >= a {
            result += (count/a)*b
            count = (count/a)*b + (count%a)
            print(result)
            print(count)
        } else {
            return result
        }
    }
    return result
}

/*
 2023.04.07 풀이
 func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
     
     // (빈병 - 빈병/n + 빈병%n)
     
     var n = n
     var b = b // 빈병을 갖다주면 받는 병수의 갯수
     var c: Int = 0
     while n >= a {
         //n: 20 , a: 2, b: 1
         c += (n/a)*b
         n = (n-((n/a)*a) + (n/a)*b)
         print(c)
         print(n)
     }
     return c
 }
 */
