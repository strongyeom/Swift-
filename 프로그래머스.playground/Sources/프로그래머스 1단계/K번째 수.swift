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
