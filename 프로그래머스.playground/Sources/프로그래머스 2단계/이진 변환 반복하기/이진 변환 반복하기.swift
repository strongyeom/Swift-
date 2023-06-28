import Foundation

func solution이진변환반복하기(_ s:String) -> [Int] {
    
    var s = s
    var count = 0, times = 0
    while s != "1" {
        let replaceCount = s.filter { $0 == "0" }.count
        count += replaceCount

        s = String(s.count - replaceCount, radix: 2)
        times += 1
    }
    
    return [times, count]
}

/*
 효율성 에러 발생
 func solution(_ s:String) -> [Int] {
     
     // "110010101001"
     
     // "111111"
     
     // 6 / 2 => 110 2*2 +2*1 + 2*0
     
     // 110 => 11
     
     // 10 => 1
     
     
     // 변환 횟수
     var changedCount = 1
     
     // 제거된 0의 갯수
     var zeroCount = 0
     
     var twoS = s
     var exampleString = ""
     
     for i in twoS {
         exampleString += String(i)
         if exampleString.contains("0") {
             exampleString.removeLast()
             zeroCount += 1
         }
     }
 //    print("exampleString",exampleString)
 //    print("zeroCount",zeroCount)
 //

     // 첫번째 0을 제거, 문자열의 갯수를 이진법으로 전환 ==> 반복
     // "111 111"
     while exampleString != "1" {
      
         let example = exampleString.count
         print("example",example)
         let binaryNumber: String = String(example, radix: 2)
         print("binaryNumber",binaryNumber)
         changedCount += 1
         exampleString = binaryNumber
         
         for _ in 0..<exampleString.count {
             if let zeroNumber = exampleString.firstIndex(of: "0") {
                 exampleString.remove(at: zeroNumber)
                 zeroCount += 1
             }
         }
         print("zeroCount",zeroCount)
         print("changedCount",changedCount)
     }
     
     return [changedCount, zeroCount]
 }
 */
