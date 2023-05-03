
import Foundation

func solution기사단원(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var result = 0
    var divisorCount = Array(repeating: 0, count: number + 1)
    print(divisorCount)
    
    // 각 숫자의 약수 개수를 계산
    for i in 1...number {
        // i : 1 number: 10, by: i
        for j in stride(from: i, through: number, by: i) {
            divisorCount[j] += 1
            print(divisorCount)
        }
    }
    
    // 각 숫자의 약수 개수에 따라 결과 계산
    for i in 1...number {
        if divisorCount[i] <= limit {
            result += divisorCount[i]
        } else {
            result += power
        }
    }
    
    return result
}
/*
 실패 케이스 시간 초과
 1. 첫번째 방법
 func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
     
     // 해당 number의 약수의 갯수를 담는 배열을 만들고
     // 약수의 갯수가 limit을 넘어가지 않으면 배열의 모든 수를 더한다
     // 만약 약수의 갯수가 limit을 넘어가면 power로 변환 해준다
     
     var countArray: [Int] = []
     var result = 0
     
     for i in 1...number {
         var count = 0
         for j in 1...number {
             if i%j == 0 {
                 count += 1
                 print(count)
             }
         }
         countArray.append(count)
         print(countArray)
     }
     
     for k in countArray {
         if k >= limit {
             result += power
         } else {
             result += k
         }
     }
     
     print(countArray)
     return result
 }
 
 2. 두번째 방법
 func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
     
     // 해당 number의 약수의 갯수를 담는 배열을 만들고
     // 약수의 갯수가 limit을 넘어가지 않으면 배열의 모든 수를 더한다
     // 만약 약수의 갯수가 limit을 넘어가면 power로 변환 해준다
     
     var countArray: [Int] = []
     var result = 0
     
     for i in 1...number {
         var count = 0
         for j in 1...number {
             if i%j == 0 {
                 count += 1
             }
         }
         countArray.append(count)
         
         if countArray.last! <= limit {
             result += countArray.last!
         } else {
             result += power
         }
     }
     print(countArray)
     return result
 }
 */
