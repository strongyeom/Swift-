import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    // 순서 상관없이 해당되는 거 있으면 count를 올려준다
    // 0 있을때는 다 맞는다는 가정 or 못 맞는다는 가정
    var count = 0
    var hcount = 0
    var cc = 0
    var answer: [Int] = []
    var banswer: [Int] = []

    for i in lottos {
        
        if i == 0 {
            hcount += 1
            print(hcount)
        }
        
        for j in 0..<win_nums.count {
            if i == win_nums[j] {
                count += 1
                print(count)
            }
        }
    }
    
    answer.append(count + hcount)
    answer.append(count)
    
    for i in answer {
        switch i {
        case 2:
            cc = 5
        case 3:
            cc = 4
        case 4:
            cc = 3
        case 5:
            cc = 2
        case 6:
            cc = 1
        default:
            cc = 6
        }
        banswer.append(cc)
    }
    print(banswer)
    
    return banswer
}

let result = solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35])
print(result)
