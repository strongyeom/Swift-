import Foundation

func solution올바른괄호(_ s:String) -> Bool {

    if let firstCha = s.first {
        if firstCha == ")" {
            return false
        }
    }
    var count: Int = 0
    for i in s {
        if String(i) == "(" {
            count += 1
        } else {
            count -= 1
        }

        if String(i) == ")" && count < 0 {
            return false
        }
    }
    if count == 0 {
        return true
    } else {
        return false
    }
}
/*
 첫시도 : 실패 - 효율성 테스트 실패
 import Foundation

 func solution(_ s:String) -> Bool {
  
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




 */


