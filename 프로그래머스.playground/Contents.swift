import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    return ""
}

let result = solution(["AN", "CF", "MJ", "RT", "NA"], [5, 3, 2, 7, 5])
print(result)

/*
 다른 풀이
 func solution(_ ingredient:[Int]) -> Int {
     
     var aa = ingredient
     var emptyArray: [Int] = []
     var count = 0
     for i in aa {
         emptyArray.append(i)
         
         // contains는 단일 요소 대상으로 동작함
         if emptyArray.count >= 4 && Array(emptyArray.suffix(4)) == [1, 2, 3, 1] {
             emptyArray.removeSubrange(emptyArray.count-4...emptyArray.count-1)
             count += 1
         }
     }
     
     return count
 }
 
 첫번째 실패 케이스 테스트 3 ~ 9, 11, 12 시간 초과
 func solution(_ ingredient:[Int]) -> Int {
     
     var aa = ingredient
     var emptyArray: [Int] = []
     var count = 0
     for i in aa {
         emptyArray.append(i)
         
         // contains는 단일 요소 대상으로 동작함
         if emptyArray.count >= 4 && emptyArray.suffix(4) == [1, 2, 3, 1] {
             emptyArray.removeSubrange(emptyArray.count-4...emptyArray.count-1)
             count += 1
             print(emptyArray)
             print(count)
         }
     }
     
     return count
 }
 
 해답
 func solution(_ ingredient:[Int]) -> Int {
     var stack: [Int] = []
     var ans = 0
     
     for i in ingredient {
         
         stack.append(i)
         
         if stack.count < 4 { continue }
         
         let n = stack.count
         if Array(stack[n-4..<n]) == [1, 2, 3, 1] {
             stack = Array(stack[0..<n-4])
             ans += 1
         }
         
     }
     return ans
 }
 
 */
