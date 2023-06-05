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

/*
 2023.06.05 다른 풀이
 func solution(_ N: Int) -> Int {
     
     // 00분 60초일때 3이 몇개인지 먼저 구하면 쉽지 않을까?
     
     var count = 0
    
     for k in 0...5 {
         for i in 0...59 {
             for j in 0...59 {
                 if (String(k) + String(i) + String(j)).contains("3") {
                     count += 1
                 }
             }
         }
     }

     
     print(count)
     
     return 0
 }
 */
