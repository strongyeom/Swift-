import Foundation

func solution(_ array: [Int], _ m: Int, _ k: Int) -> Int {
    
    let arrsory = array.sorted() //[2, 4, 4, 5, 6]
    
    let maxfirst = arrsory[array.count-1] // 6 가장 큰수
    let maxSecond = arrsory[array.count-2] // 5 두번째로 큰수
    
    
    // 가장 큰수의 갯수 * 가장 큰수
    let firstMax = ((m/k)*k)*maxfirst
    
    // 두 번째로 큰수의 갯구 * 두번째 큰수
    let secondMax = (m%k)*maxSecond
    
    
    let result = firstMax + secondMax
    
    print(result)
    return 0
}

/*
 다른 풀이 1)
 func solution(_ N: Int, _ M: Int, _ K: Int, _ array: [Int] ) -> Int {
     
     // n: 배열의 갯수
     // m: 더하는 총 배열의 갯수
     // k: k번을 초과해서 더할 수 없음
     
     // 배열에서 정렬하고 가장 큰 수 더하고,
     
     var array = array.sorted()
     print("array:",array)
     var resultCount: [Int] = []
 
     while resultCount.count < M {
         var isCount = false
         
         for i in 0..<K {
             resultCount.append(array.last!)
             if resultCount.count == M {
                 isCount = true
                 break
             }
         }
         
         if isCount {
             print("\(resultCount.count)")
             break
         } else {
             resultCount.append(array.endIndex-1)
             print("resultCount:",resultCount)
         }
         

     }
     print(resultCount)

     return resultCount.reduce(0, +)
 }
 
 
 다른 풀이 2)
 func solution(_ N: Int, _ M: Int, _ K: Int, _ array: [Int] ) -> Int {
     
     // n: 배열의 갯수
     // m: 더하는 총 배열의 갯수
     // k: k번을 초과해서 더할 수 없음
     
     // 배열에서 정렬하고 가장 큰 수 더하고,
     
     var array = array.sorted()
     print("array:",array)
     var resultCount: [Int] = []
     var m = M
     
     while m >= 0 {
         
         for i in 0..<K {
             resultCount.append(array.last!)
             m -= 1
             if m == 0 {
                 break
             }
         }
         if m == 0 {
             break
         } else {
             print("m:",m)
             resultCount.append(array.endIndex-1)
             m -= 1
             print("m:",m)
             print("resultCount:",resultCount)
         }
     }
     print(resultCount)
     
     return resultCount.reduce(0, +)
 }
 */
