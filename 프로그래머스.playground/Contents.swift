import Foundation

func solution(_ name:String) -> Int {
    
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
    let reversAlpha = Array("abcdefghijklmnopqrstuvwxyz".uppercased().reversed())
    print(alphabet)
    print(reversAlpha)
    
    
    var count = 0
    var aa = 0
    // for문으로 하나씩 돌리는데 A가 있으면 +1만 해주기
    for i in name {
        guard let firstNumber = alphabet.firstIndex(of: i) else { return 0 }
      

        print("firstNumber",firstNumber)
       
        print(type(of: firstNumber))
      
            count += firstNumber
        
    }
    print("count",count)
    print(name.count-1)
    aa =  count - (name.count-1)
    // AAAAAA
    print("aa",aa)
    return 0
}
let result = solution("JEROEN")
print(result)
