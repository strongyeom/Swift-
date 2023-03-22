import Foundation

func solution(_ s:String, _ n:Int) -> String {
    
    let smallLetters: [Character] = Array("abcdefghijklmnopqrstuvwxyz")
    let largeLetters: [Character] = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
    var result: [Character] = []
    
    for i in s {
        if smallLetters.contains(i) {
            let smallIndex = smallLetters.firstIndex(of: i)!
            let resultIndex = smallIndex + n >= 26 ? smallIndex + n - 26 : smallIndex + n
            result.append(smallLetters[resultIndex])
        } else if largeLetters.contains(i) {
            let largeIndex = largeLetters.firstIndex(of: i)!
            let resultIndex = largeIndex + n >= 26 ? largeIndex + n - 26 : largeIndex + n
            result.append(largeLetters[resultIndex])
        } else {
            result.append(i)
        }
    }
    
   print(String(result))
    
    
    return String(result)
    
}
