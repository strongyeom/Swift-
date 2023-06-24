import Foundation

func solution(_ s:String) -> Bool {
    
//    guard s.first! != ")" else {
//        return false
//    }
   // let sArray: [String] = s.map { String($0)}
    var sString: String = ""
    
    for i in s {
        sString += String(i)
        if sString.contains("()") {
            sString.removeLast()
            sString.removeLast()
        }
        print("sString",sString)
    }
    
    if sString.isEmpty {
        return true
    } else {
        return false
    }
}

let result = solution("((()))")
print(result)



