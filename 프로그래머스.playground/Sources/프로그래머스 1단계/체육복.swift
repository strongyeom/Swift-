import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
   // 제한조건을 생각하기
    
    // 잃어버린것 중에서 여벌 옷을 가져온 배열이 포함되어있지 않았을때 정렬 -> 중복값을 제거
    let losted = lost.filter { !reserve.contains($0) }.sorted()
    // 여벌옷이 있는 것 중에서 도난 당했을것 중복 제거 한다음 정렬
    var reversed = reserve.filter { !lost.contains($0) }.sorted()
    
    var result = n - losted.count
    print(losted)
    print(reversed)
    
    for i in losted {
        for j in 0..<reversed.count {
            if i == reversed[j]-1 || i == reversed[j]+1 {
                reversed.remove(at: j)
                result += 1

                // break 2번도 빌려주고 4번도 빌려주고 이렇게 안되게 하기 위해 - 조건에 여벌옷은 2벌만 있다고함
                break
            }
        }
    }
    
    return result
}
