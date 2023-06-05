import Foundation

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

let result = solution("c2")
print(result)
