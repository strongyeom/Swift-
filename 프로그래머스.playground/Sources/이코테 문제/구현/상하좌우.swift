import Foundation

func solution(_ array: [String], _ n : Int) -> [Int] {
    // 처음 [1, 1]이 주어지는데 첫번째 인덱스는 행, 두번째 인덱스는 열
    // RLUD일때 R과 L은 두번째에서만 작용, U과 D는 첫번째 인덱스에서만 작용
    var r2 = 1
    var b2 = 1
    
    for i in array {
        
        switch i {
        case "R":
            r2 += 1
            if r2 >= n {
                r2 = n
            }
        case "L":
            r2 -= 1
            if r2 == 0 {
                r2 = 1
            }
        case "U":
            b2 -= 1
            if b2 == 0 {
                b2 = 1
            }
        case "D":
            b2 += 1
            if b2 >= n {
                b2 = n
            }
        default:
            break
        }
    }
    print(r2)
    print(b2)
    var a3 = [b2, r2]
    return a3
}
