import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    
    //[배열을 큰수가 앞에 가게 하면]
    
    // [[60, 50], [70, 30], [60, 30], [80, 40]]
    
    // [[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]
    // [[10, 7], [12, 3], [15, 8], [14, 7], [15, 5]]
    var maxFirst: [Int] = []
    var maxSecond: [Int] = []

    for i in 0..<sizes.count {
        //var maxFirst: [Int] = []
        // [60,50] , [30, 70] , [60, 30], [80, 40]
        // [60,50]
        
            if sizes[i][0] > sizes[i][1] {
                maxFirst.append(sizes[i][0])
            } else {
                maxFirst.append(sizes[i][1])
            }
            
        if sizes[i][0] > sizes[i][1] {
            maxSecond.append(sizes[i][1])
        } else {
            maxSecond.append(sizes[i][0])
        }
        
     
    }
    
    print(maxFirst)
    print(maxSecond)
    
    var result = maxFirst.max()! * maxSecond.max()!
    print(result)
    return result
}
