
// ⭐️ https://www.youtube.com/watch?v=FYCGV6F1NuY
import Foundation

func recrusive() {
    // 원판 갯수
    let input = Int(readLine()!)!
    // 이동 횟수
    var count = 1

    // 재귀 함수를 어떻게 사용할 것인가?
    // 종료 조건이 있어야 함

    // start, assist, final 한번에 한칸씩 이동 작은 것이 위로 쌓이게 해야함, 이동할 때마다 count += 1

    // 모든 원판이 final로 이동할때 return

    for _ in 0..<input {
        count *= 2
    }
    print(count-1)

    hanoi(n: input, from: 1, by: 2, to: 3)

    func hanoi(n: Int, from: Int, by: Int,to: Int) {
        
        if n == 1 {
            print("\(from) \(to)")
            return
        } else {
            hanoi(n: n-1, from: from, by: to, to: by)
            print("\(from) \(to)")
            hanoi(n: n-1, from: by, by: from, to: to)
        }
    }

}
