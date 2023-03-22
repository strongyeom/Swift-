import Foundation

// 4,5번 테스트 실패... 왜 했을까?
import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    //즉 배열의 카운트가 5(n)가 아니면 맨 앞에 0을 추가해서 n자리로 만들어주기
    //다른 배열로 동일하게 적용하고 두수 더하기
    // 더한값에서 1이면 #, 0이면 " " 만들어주기
    
    var firstResult: [String] = []
    var secondResult: [String] = []
    //[9, 20, 28, 18, 11]
    for i in arr1 {
        var firstArr1: String = ""
        firstArr1.append(String(i, radix: 2))
        //"1001"
        for _ in 1...n {
            var count = firstArr1.count // 4
            if count < n {
               firstArr1 = "0" + firstArr1
                count += 1
            }
        }
        firstResult.append(firstArr1)
    }
    
    for i in arr2 {
        var secondArr1: String = ""
        secondArr1.append(String(i, radix: 2))
        // 10110, 1110
        for _ in 1...n {
            var count = secondArr1.count // 4
            if count < n {
                secondArr1 = "0" + secondArr1
                //001110
                count += 1
            }
        }
        secondResult.append(secondArr1)
    }
    
    print(firstResult) // ["101110", "100001", "100001", "010110", "011111", "110010"]
    print(secondResult) // ["011011", "111000", "010011", "001110", "001110", "001010"]
    
    var final: [String] = []
    
    for i in 0..<firstResult.count {
        var change = 0
        var completeChange = ""
        
        // "01001" "11110"
        change = Int(firstResult[i])! + Int(secondResult[i])!
        // 12111
        
        print(change)
        for i in String(change) {
            var changeResult = ""
            if Int(String(i))! >= 1 {
                changeResult += "#"
            } else {
                changeResult += " "
            }
            // #####
            completeChange += changeResult
            print(completeChange)
        }
        
        let padded = String(repeating: " ", count: n-completeChange.count) + completeChange
        final.append(padded)
        // 현재 n이6이고 나온 count가 5일때 즉, 1개 차이만 날때만 실행됨, 4나 3이 나오면 오류발생 함
//        if completeChange.count < n {
//            completeChange = " " + completeChange
//        }
//        final.append(completeChange)
//
    }
    print(final)
    return final
}
