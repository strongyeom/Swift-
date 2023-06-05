import Foundation

func solution2_3(_ n: String) -> Int {

    // 문자가 주어졌을때 배열로 변환
    let a1 = n.map { String($0) }
    var first: Int = 0
    let second: Int = Int(a1[1])!
    
    var firstResult: Int = 0
    var secondResult: Int = 0
    
    // 문자열을 Int로 변환
    switch a1[0] {
    case "a":
        first = 1
    case "b":
        first = 2
    case "c":
        first = 3
    case "d":
        first = 4
    case "e":
        first = 5
    case "f":
        first = 6
    case "g":
        first = 7
    case "h":
        first = 8
    default:
        break
    }
    
    var count = 0
    let a3 = [(-2, -1), (-2, 1), (2, -1), (2, 1), (-1, 2), (-1, -2), (1, 2), (1, -2)]
    
    for i in a3 {
        
        firstResult = first + i.0
        secondResult = second + i.1
        print(firstResult, secondResult)
        if firstResult >= 1 && firstResult <= 8 && secondResult >= 1 && secondResult <= 8 {
            count += 1
            print(count)
        }
    }
    
    return count
    
}
/*
 2023.06.05 다른 풀이
 func solution(_ N: String) -> Int {
    // 딕셔너리 형태로 만들기
     
     var rowDic: [String:Int] = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8]
     
     print(rowDic)
     
     var startPoint: [Int] = []
     let distance = [[-2,1], [-2,-1], [2,-1], [2,1], [-1,2], [-1,-2], [1,-2], [1,2]]
     var count = 0
     
  
     for i in N {
         if let number = rowDic[String(i)] {
             startPoint.append(number)
         } else {
             startPoint.append(Int(String(i))!)
         }
     }
     
     print("startPoint",startPoint)

     for j in 0..<distance.count {
         
         var row = startPoint[0] + distance[j][0]
         var columns = startPoint[1] + distance[j][1]
         
         if row > 0 && row < 9 && columns > 0 && columns < 9 {
             count += 1
         }
     }
     print("count",count)
     
     return 0
 }
 */
