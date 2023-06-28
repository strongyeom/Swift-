import Foundation

func solution문자열다루기기본(_ s:String) -> Bool {
    
    let s = s
    if s.count == 4 || s.count == 6 {
        if let number = Int(s) {
            if number >= 0 {
                return true
            }
        }
    }
    return false
}
