import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    
    // 배열d안에서 합계가 budget이 되는 가장 작은 원소들의 갯수
    
    
    //9-1  8
    //8-2 6
    //6-3 3
    
    //10-2 8
    //8-2 6
    //6-3 3
    //3-3 0
    
    var arrayS: [Int] = d.sorted()
    print(arrayS)
    var res = 0
    var count = budget
    //[1,2,3,4,5]
    for i in 0..<d.count{
            // 1
            print(i)
           count = count - arrayS[i]
            print(count)
            if count >= 0 {
                res += 1
            } else {
                break
            }
        }
    print(res)
    return res
}

