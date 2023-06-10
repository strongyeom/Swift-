import Foundation

func solutionHIndex(_ citations:[Int]) -> Int {
    
    var result: Int = 0
    let sorted = citations.sorted{$0 > $1}

    // 배열의 원소들이 배열의 count(논문의 편수)보다 전부 클 경우엔 count로 바로 리턴하도록 해준다.
    if sorted.min()! > sorted.count {
        result = sorted.count
    } else {
        for i in 0..<sorted.count {
            // 0부터시작하면 어차피 모든 배열요소의 수만큼 되기때문에 의미가없죠
            if i+1 > sorted[i] {
                result = i
                break
            }
        }
    }
    return result
}
