import Foundation

func solution2_2(_ n: Int) -> Int {
    
    
    var count = 0
   
    for i in 0...n {
        for j in 0...59 {
            for k in 0...59 {
                if String(i).contains("3") || String(j).contains("3") || String(k).contains("3") {
                    count += 1
                }
            }
        }
    }
    
    return count
}
