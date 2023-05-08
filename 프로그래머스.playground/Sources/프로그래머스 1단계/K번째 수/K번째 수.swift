import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var resultarry: [Int] = []
    let arr = array
    var firarr: [Int] = []
    // [2, 5, 3], [4, 4, 1], [1, 7, 3]
    for i in 0..<commands.count {
        print(arr[(commands[i][0]-1)...(commands[i][1]-1)])
        firarr = arr[(commands[i][0]-1)...(commands[i][1]-1)].sorted()
        print(firarr)
        
        for (index, j) in firarr.enumerated() {
            if index == commands[i][2]-1 {
                resultarry.append(firarr[index])
            }
        }
        print(resultarry)
        
    }
    return resultarry
}

/*
 2023.04.17 풀이
 func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
     
     // 빈배열
     var result:[Int] = []
     
     var a1: [Int] = [] // [ 5, 2, 6, 3 ] -> [2, 3, 5, 6]
     print(a1)
     var b1: Int = 0
     
     for i in 0..<commands.count {
         a1 = array[commands[i][0]-1...commands[i][1]-1].sorted()
         b1 = a1[commands[i][2]-1]
         result.append(b1)
     }
     
     return result
 }
 */
