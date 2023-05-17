import Foundation

func solution2_1(_ array: [String], _ n : Int) -> [Int] {
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

/*
 2023.05.17 풀이
 func solution(_ array: [String]) -> Int {

     // 정사각형 공간을 벗어나지 않는다. 즉, 1이하로 떨어지지 않는다 기본 (1, 1) 시작
     
     // "R" , "L" 일때
     
     var startPoint: [Int] = [1, 1]
     
     for i in array {
         switch i {
         case "R":
             startPoint[1] += 1
             if startPoint[1] > array.count {
                 startPoint[1] = array.count
                 print("R 무시 :",startPoint)
             }
             print("R:",startPoint)
         case "L":
             startPoint[1] -= 1
             if startPoint[1] < 1 {
                 startPoint[1] = 1
                 print("L 무시 :",startPoint)
             }
             print("L:",startPoint)
         case "U":
             startPoint[0] -= 1
             if startPoint[0] < 1 {
                 startPoint[0] = 1
                 print("U 무시 :",startPoint)
             }
             print("U:",startPoint)
         case "D":
             startPoint[0] += 1
             if startPoint[0] > array.count {
                 startPoint[0] = array.count
                 print("D 무시 :",startPoint)
             }
             print("D:",startPoint)
         default:
             break
         }
     }
     
     return 0
 }
 */
