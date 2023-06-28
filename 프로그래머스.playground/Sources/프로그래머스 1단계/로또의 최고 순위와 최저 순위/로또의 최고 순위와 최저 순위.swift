import Foundation

func solution로또의최고최저(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
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

/*
 비슷하지만 다른풀이
 func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
     var min = lottos.filter{win_nums.contains($0)}.count
     var max = lottos.filter{$0 == 0}.count + min
     var result = [max,min]

     for i in 0..<result.count {
         if result[i] == 6 {
             result[i] = 1
         } else if result[i] == 5 {
             result[i] = 2
         } else if result[i] == 4 {
             result[i] = 3
         } else if result[i] == 3 {
             result[i] = 4
         } else if result[i] == 2 {
             result[i] = 5
         } else {
             result[i] = 6
         }
     }
     return result
 }
 */
