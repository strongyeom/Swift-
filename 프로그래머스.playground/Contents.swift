import Foundation

func solution(_ array: [[Int]]) -> Int {
    
    
    var a1 = array.map { $0.sorted() } // [[1,2,3],[1,4,4],[2,2,2]]
    var count: [Int] = []
    for i in 0..<array.count {
        count.append(a1[i][0])
    }
    var result = count.sorted()
    
    return result.last!
}
let result = solution([[7,3,1,8] ,[3,3,3,4]])
print(result)

