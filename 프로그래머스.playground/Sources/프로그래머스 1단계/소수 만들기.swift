import Foundation

func solution소수만들기(_ nums:[Int]) -> Int {
    
    var emptyArray:[Int] = []
    var count = 0
    for i in 0..<nums.count-2 {
        for j in i+1..<nums.count-1 {
            for k in j+1..<nums.count {
                emptyArray.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    
    for i in emptyArray {
       var isTrue = true
        for j in 2..<i {
            if i % j == 0 {
                isTrue = false
            }
        }
        if isTrue {
            count += 1
        }
    }
    
    print(count)
    
    return count
}
