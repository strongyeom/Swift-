import Foundation

func solution(_ s:String) -> [Int] {
    
    var resultArray: [Int] = []
    var arrayS = s.map { String($0) }
    //0...5   ( banana )
    for i in 0..<s.count {
        var a1 = i
        var isEqual = false
        
        while a1>0 {
            // 무한루프 되었던 원인 : while 문안에 var a1 = a1 -1 로 설정을 해서 새로 만들어지고 돌려지고 새로 만들어지고 돌려지고 반복됨...
            a1 = a1 - 1
            if arrayS[a1] == arrayS[i] {
                resultArray.append(i - a1)
                isEqual = true
                // 비교해서 중복되는 값이 있으면 그만 멈추게 하기 위해서 break 설정
                break
            }
        }
        
        
        if isEqual == false {
            resultArray.append(-1)
        }
        
    }
    
    return resultArray
}
