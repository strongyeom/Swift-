import Foundation

func solution실패율(_ N:Int, _ stages:[Int]) -> [Int] {
        var tuple = [(Int, Double)]() // [스테이지: 실패율]
        var player = stages.count
        
        for i in 1...N {
            var current = 0
            for j in 0..<stages.count {
                if stages[j] == i {
                    current += 1
                }
            }
            
            player -= current
            
            // 딕셔너리로 묶어서 담자
            var ratio = Double(current) / Double(player)
            tuple.append((i, ratio))
        }

        tuple = tuple.sorted(by: {$0.1 > $1.1 })
        
        return tuple.map{ $0.0 }
    }
