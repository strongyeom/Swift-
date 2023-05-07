import Foundation

func solution옹알이2(_ babbling:[String]) -> Int {
    //같은 발음을 연속해서 할 수 없다.
    var result = [String]()
    
    var count = 0
    
    //사용 가능한 단어를 숫자로 변환 // ["aya", "yee", "u", "maa"]
    for babble in babbling {
        result.append(
            // replacingOccurrences: of -> with로 치환한다.
            
            babble.replacingOccurrences(of: "aya", with: "1")
                .replacingOccurrences(of: "ye", with: "2")
                .replacingOccurrences(of: "woo", with: "3")
                .replacingOccurrences(of: "ma", with: "4")
        )
        print(result)
    }
    
    //하나의 요소씩 접근하며 숫자로만 이루어진 요소만 검사해서
    for now in result{
        if let replacing = Int(now){
            // 연속된 숫자를 포함하고 있지 않다면 1 증가
            // 연속해서 발음 할때를 제외시키기 위해서 "11" 설정
            if !String(replacing).contains("11") && !String(replacing).contains("22") && !String(replacing).contains("33") && !String(replacing).contains("44"){
                count += 1
            }
        }
    }
    return count
}

/*
 다른 풀이
 
 func solution(_ babbling:[String]) -> Int {
     
     var count = 0
     for i in babbling {
         var str = i
         str = str.replacingOccurrences(of: "aya", with: "1")
         str = str.replacingOccurrences(of: "ye", with: "2")
         str = str.replacingOccurrences(of: "woo", with: "3")
         str = str.replacingOccurrences(of: "ma", with: "4")
         print(str)
         
         if Int(str) != nil && !str.contains("11") && !str.contains("22") && !str.contains("33") && !str.contains("44"){
                   count += 1
               }
         
     }
     
     return count
 }
 */
