import Foundation

func solution(_ babbling:[String]) -> Int {
    
    var count = 0
    for i in babbling {
        // str를 해당 for문의 순서대로 초기화 시켜주기 위해
        var str = i
        str = str.replacingOccurrences(of: "aya", with: "1")
        str = str.replacingOccurrences(of: "ye", with: "2")
        str = str.replacingOccurrences(of: "woo", with: "3")
        str = str.replacingOccurrences(of: "ma", with: "4")
        print(str)
        
        // str이 String으로 되어있으니까
        // Int(str)로 형 변환 해주고 nil이 아닐때 즉, 값이 Int로 변환이 된다면 -> 숫자가 있다
        // str에 같은 수가 반복되지 않을때 해당 함수 실행
        if Int(str) != nil && !str.contains("11") && !str.contains("22") &&!str.contains("33") &&!str.contains("44") {
            count += 1
        }
    }
    
    return count
}

let result = solution(["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"])
print(result)
