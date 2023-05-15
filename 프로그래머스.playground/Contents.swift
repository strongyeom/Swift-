import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    
    // calling 된 사람은 앞 사람으 추월한 사람
    
    // ["mumu", "soe", "poe", "kai", "mine"]
    
    // ["kai", "kai", "mine", "mine"]
    
    // kai 일때 ["mumu", "soe", "kai", "poe", "mine"]
    
    // kai 일때 ["mumu", "kai", "soe", "poe", "mine"]
    
    // mine 일때 ["mumu", "kai", "soe", "mine", "poe"]
    
    // mine 일때 ["mumu", "kai", "mine", "soe", "poe"]
    
    // 결국 calling 된 된 players의 인덱스와 그 인덱스 -1 의 값을 체인지 해준다. !
    
    
    // 등수가 바뀌기 때문에 변수로 할당
    var result: [String] = players
    // 딕셔너리 형태로 문자 : Int 담아주기
    var callingDic: [String:Int] = [:]
    
    // calling에 있는 문자의 갯수를 세고, 그만큼 players에서 인덱스를 빼주면 되지 않을까?
    // ex) calling안에 kai: 2, mine:2
    // players 0, 1, 2, 3, 4
    // players 0, 0, 0, 2, 2 , insert로 삽입하면 뒤로 하나씩 밀리지 잖아

    for (index, player) in players.enumerated() {
        callingDic[player] = index
    }
    print("callingDic:",callingDic)
    
    
    for i in callings {
        var index = callingDic[i]
        var forent = result[index!-1]
        
        // ["mumu", "soe", "poe", "kai", "mine"]
        result.swapAt(index!, index!-1)
        // ["mumu", "soe", "kai", "poe", "mine"]
       
        callingDic[i] = callingDic[i]! - 1
        callingDic[forent] = callingDic[forent]! + 1
        print("callingDic:",callingDic)
    }
    
    print("최종 result:",result)
    
    return result
}


let result = solution(["mumu", "soe", "poe", "kai", "mine"], ["kai", "kai", "mine", "mine"])
print(result)
// ["mumu", "kai", "mine", "soe", "poe"]
// ["mumu", "kai", "soe", "mine", "poe"]
// ["mumu", "kai", "soe", "poe", "mine"]
// ["kai", "mumu", "soe", "poe", "mine"]

/*
 실패 테스트 7 ~ 13 시간 초과
 
 // 등수가 바뀌기 때문에 변수로 할당
 var result: [String] = players
 
 for i in 0..<callings.count {
 if let number = result.firstIndex(of: callings[i]) {
 result[number] = result[number-1]
 result[number-1] = callings[i]
 }
 }
 print(result)
 
 // 에러 발생 코드
 for i in callings {
     if callingDic[i] == nil && i != players[0] {
         callingDic[i] = 1
     } else if callingDic[i] != nil && i != players[0] {
         callingDic[i] = callingDic[i]! + 1
     }
 }
 
 func solution(_ players:[String], _ callings:[String]) -> [String] {
     
     // calling 된 사람은 앞 사람으 추월한 사람
     
     // ["mumu", "soe", "poe", "kai", "mine"]
     
     // ["kai", "kai", "mine", "mine"]
     
     // kai 일때 ["mumu", "soe", "kai", "poe", "mine"]
     
     // kai 일때 ["mumu", "kai", "soe", "poe", "mine"]
     
     // mine 일때 ["mumu", "kai", "soe", "mine", "poe"]
     
     // mine 일대 ["mumu", "kai", "mine", "soe", "poe"]
     
     // 결국 calling 된 된 players의 인덱스와 그 인덱스 -1 의 값을 체인지 해준다. !
     
     
     // 등수가 바뀌기 때문에 변수로 할당
     var result: [String] = players
     // calling 중복 갯수 세기
     var callingDic: [String:Int] = [:]
     
     // calling에 있는 문자의 갯수를 세고, 그만큼 players에서 인덱스를 빼주면 되지 않을까?
     // ex) calling안에 kai: 2, mine:2
     // players 0, 1, 2, 3, 4
     // players 0, 0, 0, 2, 2 , insert로 삽입하면 뒤로 하나씩 밀리지잖아

     for (index, player) in players.enumerated() {
         callingDic[player] = index
     }
     
     
     print("callingDic:",callingDic)
     
     
     for (index, value) in callingDic {
         print("index:",index)
         if let number = result.firstIndex(of: index) {
             // 해당 인덱스 삭제하고
             //result.remove(at: number)
             // 삽입하기
             // mine
             // ["mumu", "soe", "poe", "kai", "mine"]
                 result.insert(index, at: number - value)
             }
         }
     
     print("최종 result:",result)
     
     return result
 }
 */

/*
 func solution(_ players:[String], _ callings:[String]) -> [String] {
     var result = players
     var playerRankingDic: [String: Int] = [:]

     for (index, player) in players.enumerated() {
         playerRankingDic[player] = index
     }
     print("playerRankingDic:", playerRankingDic)

     for calling in callings {
         let targetIndex = playerRankingDic[calling]!
         print("targetIndex:",targetIndex)
         // ["mumu", "soe", "poe", "kai", "mine"]
         let upperPlayer = result[targetIndex-1]
         print("upperPlayer:",upperPlayer)
         // map 변경
         playerRankingDic[calling]! -= 1
         print("playerRankingDic[calling]:",playerRankingDic[calling])
         // reuslt의 인덱스가 바뀌기 때문에 작성해줌, 중복되지 않은 문자가 왔을대 대비
         playerRankingDic[upperPlayer]! += 1
         print("playerRankingDic[upperPlayer]:",playerRankingDic[upperPlayer])

         // 결과 없데이트
         let temp = result[targetIndex]
         print("temp:",temp)
         result[targetIndex] = result[targetIndex-1]
         result[targetIndex-1] = temp
         // ["mumu", "soe", "kai", "poe", "mine"]
     }

     return result
 }
 
 
 */
