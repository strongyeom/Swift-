import Foundation

func solution3(_ left:Int, _ right:Int) -> Int {
    
    var res: Int = 0
    for i in left...right {
        var arr: [Int] = []
        for j in 1...i {
            if i%j == 0 {
                arr.append(j)
            }
        }
        if arr.count%2 == 0 {
            res += i
        } else {
            res -= i
        }
    }
    
    return res
}
