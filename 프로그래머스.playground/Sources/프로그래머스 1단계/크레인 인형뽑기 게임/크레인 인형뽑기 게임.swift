import Foundation

func solution크레인인형뽑기(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    // 크레인을 통해 아래에서 부터 쌓임
    // 아래서 부터 쌓이는 것들중 같은 수가 반복되면 없어짐
    
    var crainIndex = moves.map { $0 - 1 }
    var board = board
    print("crainIndex:",crainIndex)
    var resultArray: [Int] = []
    var finalresult: [Int] = []
    var count = 0
    
    for k in crainIndex {
        for i in 0..<board.count {
            print(board[i][k])
            // 하나씩 돌아가면서 해당 인덱스가 0보다 크면 빈 배열에 담고 해당 인덱스를 0으로 만들기
            if board[i][k] > 0 {
                resultArray.append(board[i][k])
                board[i][k] = 0
                break
            }
        }
    }
  print(resultArray)
    
    for j in 0..<resultArray.count {
        finalresult.append(resultArray[j])
        print("for문:",finalresult)
        if  finalresult.endIndex > 1 && finalresult[finalresult.endIndex-1] == finalresult[finalresult.endIndex-2] {
            finalresult.removeLast()
            finalresult.removeLast()
            count += 1
        }
        print("조건 후:",finalresult)
    }
    
    return count * 2
}
