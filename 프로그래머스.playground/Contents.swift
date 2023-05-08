import Foundation

func solution(_ new_id:String) -> String {
    
    // 1번째
    var newId = new_id.lowercased()
    print("1번째",newId)
    // 2번째
    var specialChr = "~!@#$%^&*()=+[{]}:?,<>/"
    for i in specialChr {
        if let number = newId.firstIndex(of: i) {
            newId.remove(at: number)
        }
    }
    print("2번째:",newId)
    
    // 3번째
    newId = newId.replacingOccurrences(of: "...", with: ".").replacingOccurrences(of: "..", with: ".").trimmingCharacters(in: [".", "."])
    print("3번째",newId)
    // 4번째
    print("4번째",newId)
    // 5번째
    if newId.isEmpty {
        newId = "a"
    }
    print("5번째",newId)
    
    // 6번째
    while newId.count >= 16 {
        newId.removeLast()
    }
    print("6번째",newId)
    
    // 7번째
    while newId.count <= 2 {
        newId += String(newId.last!)
    }
    print("7번째",newId)
    return ""
}

let result = solution("=.=")
print(result)
