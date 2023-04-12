import Foundation

func dfssolution(_ numbers:[Int], _ target:Int) -> Int {
    
    // 한번에 마지막 노드까지 탐색하고 돌아와서 다시 노드까지 가는 방식
    // dfs는 재귀를 이용
    
    // 시작은 index: 0, sum: 0 이며 index는 1씩 증가시키고, sum은 + numbers[index]와 -numbers[index]를 합해서 전달합니다.
    
    
    // 경우의 수 값
    var count: Int = 0
    
    // 재귀함수 만들어준다.
    func dfs(index: Int, sum: Int) {
        // depth가 numbers의 depth와 동일해지면 sum을 확인하여 동일하면 count를 증가시킴
        // 즉, index가 배열의 길이와 같다면, 다 계산한 것임
        if index == numbers.count {
            // 그중에서 sum의 값이 target의 값과 같다면
            if sum == target {
                // count += 1을 해주고 다끝났으면
                count += 1
            }
            // 종료
            return
        }
        dfs(index: index+1, sum: sum + numbers[index])
        dfs(index: index+1, sum: sum - numbers[index])
    }
    
    // 시작 index: 0 , sum: 0
    dfs(index: 0, sum: 0)
    
    
    
    return count
}
