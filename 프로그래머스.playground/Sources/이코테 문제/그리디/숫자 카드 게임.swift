import Foundation

func solution(_ N: Int, _ M: Int , _ array: [[Int]] ) -> Int {
    
    // n: 행의 길이
    // m: 열의 길이
    // 주어진 배열에서 가장 작은수 들중 가장 큰수
    
    // 배열중 가장 작은 수 담는 배열
    var emptyArray: [Int] = []
    
    for i in array {
        emptyArray.append(i.min()!)
        print(emptyArray)
    }
    
    
    return emptyArray.max()!
}
