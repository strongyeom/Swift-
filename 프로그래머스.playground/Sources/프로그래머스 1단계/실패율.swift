import Foundation

func solution실패율(_ N:Int, _ stages:[Int]) -> [Int] {
    // 스테이지 : 실패율
    var tuple = [(Int, Double)]()
   
    // 실패율 계산 후 저장
    for i in 1...N{
        // 도달한 수
        let a = stages.filter{$0 >= i}.count
        // 클리어한 수
        let b = a - stages.filter{$0 > i}.count
        // 실패율
        let failCount = Double(b) / Double(a)

        tuple.append(i, failCount)
        print(tuple)
    }

    // 실패율이 높은 순서대로 내림차순 숫자 등록, 실패율이 같으면 오름차순
    tuple = tuple.sorted(by: {$0.1 > $1.1 })
    
    return tuple.map{ $0.0 }
}


