import Foundation

func solution(_ n:Int) -> Int {
    
   
    var b1: Int = 0
    var a1: [Int] = []
    for i in 2...n {
        switch i {
        case 2:
            a1.append(i)
        case 3:
            a1.append(i)
        case 5:
            a1.append(i)
        default:
            if i%2 != 0 && i%3 != 0 && i%5 != 0 {
                a1.append(i)
            }
        }
       }
    
    
    var numberArray = Array(repeating: true, count: n+1)
    print(numberArray)
    
    b1 = a1.count
       return b1
  
}


let result = solution(10)
print(result)

