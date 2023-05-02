import Foundation

func solution덧칠하기(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    // section이 비어있을때 0 을 리턴
    // 왜냐하면 section[0]을 사용하기 때문에 빈배열일때 는 참조할 수 없기에 에러 발생
    guard !section.isEmpty else {
        return 0
    }
    
    var now = section[0]
    var counter = 0
    
    for s in section {
        // 2
        if s >= now {
            counter += 1
            // 2 + 4
            now = s + m
            print(now)
        }
    }

    return counter
}
