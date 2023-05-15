import Foundation

func solution달리기경주(_ players:[String], _ callings:[String]) -> [String] {
    
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
