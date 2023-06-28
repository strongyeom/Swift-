import Foundation

func solution둘만의암호(_ s: String, _ skip: String, _ index: Int) -> String {
    var sArray = s.map { String($0) }
    print("s배열",sArray)
    var alphabet = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
    print("알파벳 배열",alphabet)
    let skipArray = skip.map { String($0) }
    print("skip배열",skipArray)
    
    // 핵심!!
    for skipLetter in skipArray {
        if let index = alphabet.firstIndex(of: skipLetter) {
            alphabet.remove(at: index)
        }
    }
    print("skip제거 알파벳 배열",alphabet)
    
    var answer = ""
    
    for letter in sArray {
        if let currentIndex = alphabet.firstIndex(of: letter) {
            let nextIndex = (currentIndex + index) % alphabet.count
            print(nextIndex)
            answer.append(alphabet[nextIndex])
        }
    }
    return answer
}

/*
 다른 풀이
 func solution(_ s:String, _ skip:String, _ index:Int) -> String {


     let alphabet = Array("abcdefghijklmnopqrstuvwxyz").filter { !skip.contains($0) }
     var answer: String = ""

     for c in s {
         answer += String(alphabet[(alphabet.firstIndex(of: c)! + index) % alphabet.count])
     }

     return answer
 }
 */
