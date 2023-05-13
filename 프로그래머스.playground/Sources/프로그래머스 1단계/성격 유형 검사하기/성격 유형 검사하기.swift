import Foundation

func solution성격유형검사하기(_ survey:[String], _ choices:[Int]) -> String {
    
    // "RT", "TR", "FC", "CF", "MJ", "JM", "AN", "NA"
    
    var dic: [String:Int] = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A":0, "N": 0]
    
    var answer = ""
    print("Dic",dic)
    // choices 에 대한 값이 들어왔을때 해당 dic에 숫자 더하기
    for k in 0..<choices.count {
        
        let first = survey[k].first!
        let last = survey[k].last!
        
        switch choices[k] {
        case 1:
            dic[String(first)]! += 3
        case 2:
            dic[String(first)]! += 2
        case 3:
            dic[String(first)]! += 1
        case 4:
            continue
        case 5:
            dic[String(last)]! += 1
        case 6:
            dic[String(last)]! += 2
        case 7:
            dic[String(last)]! += 3
        default:
            break
        }
    }
    
    print("dic for choices:",dic)
    
    if dic["R"]! >= dic["T"]! {
        answer += "R"
    } else {
        answer += "T"
    }
    
    if dic["C"]! >= dic["F"]! {
        answer += "C"
    } else {
        answer += "F"
    }
    
    if dic["J"]! >= dic["M"]! {
        answer += "J"
    } else {
        answer += "M"
    }
    
    if dic["A"]! >= dic["N"]! {
        answer += "A"
    } else {
        answer += "N"
    }
    
    print("answer:",answer)
    
    return answer
}
