import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    //Set을 사용하면 중복된 것을 제거 할 수있다.
    
    var result: [Int] = []
    var finalResult: [Int] = []
    
    for i in 0..<numbers.count {
        for j in 1..<numbers.count {
            if i != j {
                result.append(numbers[i] + numbers[j])
            }
        }
       finalResult = Set(result).sorted()
       
    }
    
    return finalResult
}

/*
 2023.04.06 풀이
 func solution(_ numbers:[Int]) -> [Int] {
     
     // 첫번째 인덱스부터 다른 인덱스들과 한번씩 다 더하고 set 배열에 담고
     // set 배열을 다시 배열로 바꾸고 오름차순으로 정리해보면?
     var a1: [Int] = []
    //0...4
     for i in 0..<numbers.count {
         // j: 0 ...4
         var b1: Int = 0
         for j in i..<numbers.count-1 {
              b1 = numbers[i] + numbers[j+1]
             a1.append(b1)
            
         }
     }
     print(a1)
     
     var b1 = Set(a1).sorted()
     print(b1)
     
     return b1
 }
 */
