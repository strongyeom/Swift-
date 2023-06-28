import Foundation

func solution행렬의덧셈(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var result :[[Int]] = []
    
    for i in 0..<arr1.count {
        var count: [Int] = []
        for j in 0..<arr1[i].count {
            count.append(arr1[i][j] + arr2[i][j])
        }
        result.append(count)
       
    }

    return result
}
