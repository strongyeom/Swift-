import Foundation

func solution영어끝말잇기(_ n:Int, _ words:[String]) -> [Int] {
   
    var wordDB: [String] = []
    
    for i in 0..<words.count {
        
        var word = words[i]
        
        if word.count < 1 {
            print("단어가 1개 이하",i)
            return [i%n + 1, i/n + 1]
        }
        
        if wordDB.contains(words[i]) {
            print("포함되어 있을때",i)
           return [i%n + 1, i/n + 1]
        }
        
        if wordDB.count != 0 {
            var lastWord = wordDB[wordDB.count - 1]
            if lastWord.removeLast() != word.removeFirst(){
                return [i%n + 1, i/n + 1]
            }
            // 이 시점에서 조건문을 타서 word는 변한다.
        }
        
        wordDB.append(words[i])

    }
    
   
    return [0,0]
}

