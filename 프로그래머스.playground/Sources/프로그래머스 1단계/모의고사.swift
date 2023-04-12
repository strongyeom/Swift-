import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    // 1번 : 1, 2, 3, 4, 5 ...
    // 2번 : (2, 1), (2, 3), (2, 4), (2, 5) ...
    // 3번 : 3, 3, 1, 1, 2, 2, 4, 4, 5, 5 ...
    
    // 인덱스 번호랑 일치하면 count += 1 해서 찾기
    print(answers)
    let a1: [Int] = [1, 2, 3, 4, 5]
    var b1: [Int] = []
    for i in 0..<answers.count {
        b1.append(a1[i%a1.count])
    }
    print(b1)
    
    let a2: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    var b2: [Int] = []
    for j in 0..<answers.count {
        b2.append(a2[j%a2.count])
    }
    print(b2)
    
    let a3: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var b3: [Int] = []
    for k in 0..<answers.count {
        b3.append(a3[k%a3.count])
    }
    print(b3)
   
    
    var count = [0, 0, 0]
    var answer: [Int] = []
    for i in 0..<answers.count {
        if answers[i] == a1[i%a1.count] {
            count[0] += 1
            print(count)
        }
        if answers[i] == a2[i%a2.count] {
            count[1] += 1
            print(count)
        }
        if answers[i] == a3[i%a3.count] {
            count[2] += 1
            print(count)
        }
    }
    
    let max = count.max()!
    
    for i in 0..<count.count {
        if max == count[i] {
            answer.append(i+1)
        }
    }
    print(answer)

    return answer
}

/*
 2023.04.12 풀이
 func solution(_ answers:[Int]) -> [Int] {
     
     var a1: [Int] = [1, 2, 3, 4, 5]
     var a2: [Int] = [2,1,2,3,2,4,2,5]
     var a3: [Int] = [3,3,1,1,2,2,4,4,5,5]
     
     var countArray: [Int] = [0,0,0]
     
     for i in 0..<answers.count {
         if answers[i] == a1[i%a1.count] {
             countArray[0] += 1
         }
         if answers[i] == a2[i%a2.count] {
             countArray[1] += 1
         }
         if answers[i] == a3[i%a3.count] {
             countArray[2] += 1
         }
     }
     
     print(countArray)
     
     let max = countArray.max()!
     var result: [Int] = []
     for i in 0..<countArray.count {
         if max == countArray[i] {
             result.append(i+1)
         }
         result.sorted()
     }
     
     
     
     // 가장 많이 맞춘 사람( 인덱스 )
     return result
 }
 */
